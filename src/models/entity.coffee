_ = require 'underscore'
mongoose = require 'mongoose'

entitySchema = new mongoose.Schema(

  category:
    type: String

  name:
    type: String
    required: true
    trim: true

  relativeImagePath:
    type: String
    required: true
    trim: true

  relativeRelatedImagePath:
    type: String
    trim: true

  source:
    type: String

  url:
    type: String
    trim: true

  price:
    type: Number

  description:
    type: String
    trim: true

  likeCount:
    type: Number
    default: 0

  dislikeCount:
    type: Number
    default: 0

  opinions:
    type: Array
    default: []

  isProduct:
    type: Boolean

)

Entity = mongoose.model 'Entity', entitySchema

Entity.updateLikeCountsForEntityWithId = (entityId, callback) ->
  entityId = new mongoose.Types.ObjectId(entityId) if entityId._bsontype != 'ObjectID'
  Entity.aggregate([
    
    { $match: { _id: entityId } }
    , { $unwind: '$opinions' }
    , { $group: { _id: '$opinions.like', count: { $sum: 1 } } }
    , { $project: { _id: 0, like: '$_id', 'count': '$count' } }
  ]).exec (err, results) ->
    likeCount = 0
    dislikeCount = 0
    _.each results, (result) ->
      likeCount += result.count if result.like == 'true' or result.like == true
      dislikeCount += result.count if result.like == 'false' or result.like == false
    Entity.update({ _id: entityId}, $set: { likeCount: likeCount, dislikeCount: dislikeCount }).exec (err, updateCount) ->
      callback(err, updateCount) if callback

module.exports = Entity