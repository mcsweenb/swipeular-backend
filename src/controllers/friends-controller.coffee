auth = require './../lib/auth'
User = require './../models/user'

module.exports = (app) ->

  controller = { opinions: {} }
  mongoose = app.locals.mongoose

  # controller.index = (req, res) ->
  #   auth.authenticateRequest req, res, (user) ->
  #     query = User.find()
  #     query.select '_id name imageUrl facebookId googleId twitterId'
  #     query.where('_id').ne(user._id)
  #     query.exec (err, users) ->
  #       if err then res.status(500).send err
  #       else
  #         res.status(200).send users

  controller.index = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      friends =
        facebookFriends: user.facebookFriends || []
        twitterFollowers: user.twitterFollowers || []
      res.status(200).send friends


  controller