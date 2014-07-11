auth = require './../lib/auth'
User = require './../models/user'

module.exports = (app) ->

  controller = {}
  mongoose = app.locals.mongoose

  controller.destroy = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      user.unsetAuthenticationToken()
      user.save (err) ->
        if err
          res.status(500).send err
        else
          res.status(200).send()
  

  controller.verify = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      res.status(200).send user.getBasicProfileObject()

  controller