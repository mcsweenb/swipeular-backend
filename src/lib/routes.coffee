_ = require 'underscore'

module.exports.configure = (app) ->

  AdminController = require('./../controllers/admin-controller')(app)
  BookmarksController = require('./../controllers/bookmarks-controller')(app)
  CategoriesController = require('./../controllers/categories-controller')(app)
  EntitiesController = require('./../controllers/entities-controller')(app)
  FriendsController = require('./../controllers/friends-controller')(app)
  SessionsController = require('./../controllers/sessions-controller')(app)

  config = app.locals.config
  passport = app.locals.passport

  app.get     '/', (req, res) -> res.send('Hi there.')

  app.get     '/admin/seed', AdminController.seed
  app.get     '/admin/seed-opinions', AdminController.seedOpinions
  app.get     '/admin/sign-out-all-users', AdminController.signOutAllUsers

  app.get     '/categories', CategoriesController.index

  app.get     '/entities', EntitiesController.index
  app.post    '/entities', EntitiesController.create
  app.post    '/entities/:id/opinions', EntitiesController.opinions.create

  app.post    '/bookmarks', BookmarksController.create
  app.delete  '/bookmarks', BookmarksController.destroy

  app.get     '/friends', FriendsController.index

  app.delete  '/sessions', SessionsController.destroy
  app.get     '/sessions/verify', SessionsController.verify

  ###########################

  app.get     '/auth/facebook', passport.authenticate('facebook')
  app.get     '/auth/facebook/callback', (req, res, next) ->
    passport.authenticate('facebook', (err, user) ->
      res.redirect "#{ config.frontEndAppUrl }?authenticationToken=#{ user.authenticationToken }"
    )(req, res, next)

  ###########################

  app.get     '/auth/google', passport.authenticate('google')
  app.get     '/auth/google/callback', (req, res, next) ->
    passport.authenticate('google', (err, user) ->
      res.redirect "#{ config.frontEndAppUrl }?authenticationToken=#{ user.authenticationToken }"
    )(req, res, next)

  ###########################

  app.get     '/auth/twitter', passport.authenticate('twitter')
  app.get     '/auth/twitter/callback', (req, res, next) ->
    passport.authenticate('twitter', (err, user) ->
      res.redirect "#{ config.frontEndAppUrl }?authenticationToken=#{ user.authenticationToken }"
    )(req, res, next)
