GoogleStrategy = require('passport-google').Strategy
User = require './../models/user.js'

module.exports.configure = (app) ->
  
  config = app.locals.config
  passport = app.locals.passport

  passport.use new GoogleStrategy
    clientId: config.google.consumerKey
    clientSecret: config.twitter.consumerSecret
    oauthCallbackURL: "#{ config.oAuthCallbackBaseUrl }/auth/google/callback"
    returnURL: "#{ config.oAuthCallbackBaseUrl }/auth/google/callback",
    realm: config.oAuthCallbackBaseUrl
  ,
  (id, profile, whatIsThis, done) ->
    User.findOne { googleId: id }, (err, user) ->
      # console.log profile
      user = new User({ googleId: id }) unless user
      user.name = profile.displayName
      user.email = profile.emails[0].value if profile.emails and profile.emails[0]
      user.generateAndSetAuthenticationToken()
      user.save (err, user) ->
        done err, user