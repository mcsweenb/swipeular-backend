auth = require './../lib/auth'
Entity = require './../models/entity'

module.exports = (app) ->

  controller = { opinions: {} }
  mongoose = app.locals.mongoose

  controller.index = (req, res) ->
    query = Entity.find()
    query.select '-opinions' unless req.query.includeOpinions
    query.limit(req.query.limit) if req.query.limit
    query.exec (err, entities) ->
      if err then res.status(500).send err
      else
        res.status(200).send entities



  controller.findByCategory = (req, res) ->
    query = Entity.find()
    query.select '-opinions' unless req.query.includeOpinions
    query.limit(req.query.limit) if req.query.limit
    query.exec (err, entities) ->
      if err then res.status(500).send err
      else
        res.status(200).send entities


  controller.create = (req, res) ->
    entity = new Entity(req.body)
    entity.save (err) ->
      if err then res.status(422).send err
      else res.status(201).send entity

  controller.opinions.create = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      entityId = req.params.id
      like = req.body.like == 'true' or req.body.like == true
      if not entityId
        res.status(422).send { errors: { entityId: 'is required' } }
      else
        selectQuery = { _id: entityId, 'opinions.userId': user._id }
        updateQuery = { $set: { 'opinions.$.like': like } }
        Entity.update(selectQuery, updateQuery).exec (err, updateCount) ->
          if err then res.status(422).send err
          else
            if updateCount > 0
              Entity.updateLikeCountsForEntityWithId entityId
              res.status(204).send()
            else
              selectQuery = { _id: entityId }
              updateQuery = { $push: { opinions: { userId: user._id, like: like } } }
              Entity.update(selectQuery, updateQuery).exec (err, updateCount) ->
                if err then res.status(422).send err
                else
                  Entity.updateLikeCountsForEntityWithId entityId
                  res.status(201).send()

  controller