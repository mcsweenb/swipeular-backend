_ = require 'underscore'
auth = require './../lib/auth'
Entity = require './../models/entity'

module.exports = (app) ->

  controller = { }
  mongoose = app.locals.mongoose

  controller.create = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      entityId = req.body.entityId
      if not entityId
        res.status(422).send { errors: { entityId: 'is required' } }
      else
        bookmark = _.find user.bookmarks, (bookmark) ->
          bookmark.entityId == entityId
        if bookmark
          res.status(200).send()
        else
          user.bookmarks.push { entityId: entityId }
          user.save (err) ->
            if err then res.status(422).send err
            else res.status(201).send()

  controller.destroy = (req, res) ->
    auth.authenticateRequest req, res, (user) ->
      entityId = req.body.entityId
      if not entityId
        res.status(422).send { errors: { entityId: 'is required' } }
      else
        user.bookmarks = _.reject user.bookmarks, (bookmark) ->
          bookmark.entityId == entityId
        user.save (err) ->
          if err then res.status(422).send err
          else res.status(200).send()

  controller