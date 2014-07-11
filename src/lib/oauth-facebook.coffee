request = require 'request'

FacebookStrategy = require('passport-facebook').Strategy
User = require './../models/user.js'

module.exports.configure = (app) ->

  config = app.locals.config
  passport = app.locals.passport
  
  # https://developers.facebook.com/docs/reference/login/extended-profile-properties/

  passport.use new FacebookStrategy
    clientID: config.facebook.appId
    clientSecret: config.facebook.appSecret
    callbackURL: "#{ config.oAuthCallbackBaseUrl }/auth/facebook/callback"
    profileFields: ['id', 'username', 'name', 'displayName', 'profileUrl', 'photos', 'gender', 'location', 'friends']
    scope: ['user_location', 'friends_photos']
  ,
  (accessToken, refreshToken, profile, done) ->
    User.findOne { facebookId: profile.id }, (err, user) ->
      console.log 'facebook profile data: ', profile
      user = new User({ facebookId: profile.id }) unless user
      user.name = profile.displayName
      user.imageUrl = profile.photos[0].value if profile.photos and profile.photos[0]
      user.gender = profile.gender if profile.gender
      user.location = profile._json.location.name if profile._json.location
      user.profileUrl = profile.profileUrl
      user.authenticationToken = accessToken
      user.save (err, user) ->
        request "https://graph.facebook.com/me/friends?access_token=#{ accessToken }&fields=name,id,picture", (error, response, body) ->
          console.log 'facebook friend data: ', body
          if !error and response.statusCode == 200
            friends = []
            for friend in JSON.parse(body).data
              friends.push { id: friend.id, name: friend.name, imageUrl: friend.picture.data.url }
            user.facebookFriends = friends
            user.save (err, save) ->
              done err, user.getBasicProfileObject()
          else
            done err, user.getBasicProfileObject()


