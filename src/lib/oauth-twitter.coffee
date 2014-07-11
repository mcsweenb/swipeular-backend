Twit = require 'twit'
TwitterStrategy = require('passport-twitter').Strategy
User = require './../models/user.js'

module.exports.configure = (app) ->
  
  config = app.locals.config
  passport = app.locals.passport

  Twit = new Twit
    consumer_key: config.twitter.consumerKey
    consumer_secret: config.twitter.consumerSecret
    access_token: config.twitter.accessToken
    access_token_secret: config.twitter.accessTokenSecret

  passport.use new TwitterStrategy
    consumerKey: config.twitter.consumerKey
    consumerSecret: config.twitter.consumerSecret
    oauthCallbackURL: "#{ config.oAuthCallbackBaseUrl }/auth/twitter/callback"
  ,
  (accessToken, refreshToken, profile, done) ->
    User.findOne { twitterId: profile.id }, (err, user) ->
      console.log 'twitter profile data: ', profile
      user = new User({ twitterId: profile.id }) unless user
      user.name = profile.displayName
      user.imageUrl = profile.photos[0].value if profile.photos and profile.photos[0]
      user.location = profile._json.location
      user.profileUrl = "http://twitter.com/#{ profile._json.screen_name }"
      user.authenticationToken = accessToken
      user.save (err, user) ->
        Twit.get 'followers/list', { user_id: profile.id },  (err, reply) ->
          console.log 'twitter followers data: ', reply
          if err then done err, user.getBasicProfileObject()
          else
            followers = []
            for follower in reply.users
              followers.push {
                id: follower.id_str
                , name: follower.name
                , imageUrl: follower.profile_image_url
                , screenName: follower.screen_name
              }
            user.twitterFollowers = followers
            user.save (err, save) ->
              done err, user.getBasicProfileObject()