_ = require 'underscore'
bcrypt = require 'bcryptjs'
mongoose = require 'mongoose'

userSchema = new mongoose.Schema(

  facebookId:
    type: String
    index: { unique: true, sparse: true }

  googleId:
    type: String
    index: { unique: true, sparse: true }

  twitterId:
    type: String
    index: { unique: true, sparse: true }

  authenticationToken:
    type: String

  email:
    type: String

  name:
    type: String

  profileUrl:
    type: String

  imageUrl:
    type: String

  location:
    type: String

  gender:
    type: String

  facebookFriends:
    type: Array

  twitterFollowers:
    type: Array

  bookmarks:
    type: Array
    default: []

)

User = mongoose.model 'User', userSchema

User::generateAndSetAuthenticationToken = (forceNew) ->
  return @authenticationToken if @authenticationToken and not forceNew
  @authenticationToken = bcrypt.hashSync(new Date().getTime() + Math.random(), bcrypt.genSaltSync(10))

User::unsetAuthenticationToken = ->
  @authenticationToken = null

User::setPassword = (clearTextPassword) ->
  return if not clearTextPassword
  @password = bcrypt.hashSync(clearTextPassword, bcrypt.genSaltSync(10))

User::verifyPassword = (clearTextPassword) ->
  bcrypt.compareSync clearTextPassword, @password

User::getBasicProfileObject = ->
  user = @toObject()
  delete user.facebookFriends
  delete user.twitterFollowers
  user

module.exports = User