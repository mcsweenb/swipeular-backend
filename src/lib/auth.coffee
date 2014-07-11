User = require './../models/user.js'

module.exports.authenticateRequest = (req, res, callback) ->
  handleInvalidToken = ->
    res.status(401).send
      errors:
        'authentication token':
          message: 'is invalid'
  token = req.body.authenticationToken || req.params.authenticationToken || req.query.authenticationToken
  # console.log "authenticating request with token: #{ token }"
  if not token then handleInvalidToken()
  else
    User.findOne({ authenticationToken: token }).exec (err, user) ->
      if user
        callback(user) if callback
      else
        handleInvalidToken()
      