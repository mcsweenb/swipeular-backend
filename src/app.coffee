###################################################################
# Includes
###################################################################

config = require './config/config'
express = require 'express'
http = require 'http'
mongoose = require 'mongoose'
passport = require 'passport'
path = require 'path'
routes = require './lib/routes'




###################################################################
# Application Instantiation
###################################################################

app = express();

server = http.createServer app

app.locals.config = config = config[app.settings.env]
app.locals.mongoose = mongoose
app.locals.passport = passport





###################################################################
# Global Environment Configuration
###################################################################

app.set 'port', process.env.PORT or 5000
app.use express.bodyParser()
app.use express.cookieParser()
app.use express.favicon()
app.use express.logger('dev')
app.use express.json()
app.use passport.initialize()
app.use passport.session()
app.use express.methodOverride()
app.use express.session({ secret: 'JCPYayOrNay' })
app.use express.urlencoded()
app.use (req, res, next) ->
  res.header 'Access-Control-Allow-Origin', '*'
  res.header 'Access-Control-Allow-Methods', '*'
  res.header 'Access-Control-Allow-Headers', '*'
  next()

routes.configure app;



###################################################################
# OAuth Configuration
###################################################################

passport.serializeUser (user, done) ->
  done null, user.id

passport.deserializeUser (id, done) ->
  User.findById id, (err, user) ->
    done err, user

require('./lib/oauth-facebook').configure app
require('./lib/oauth-google').configure app
require('./lib/oauth-twitter').configure app



###################################################################
# Development Configuration
###################################################################

app.configure 'development', ->
  app.use express.errorHandler()
  app.use express.static(path.join(__dirname, '../yay-or-nay-front-end/build'))


###################################################################
# Production Configuration
###################################################################

app.configure 'production', ->
  # heroku config:set NODE_ENV=production




###################################################################
# Database Connection
###################################################################

host = process.env.MONGOLAB_URI or process.env.MONGOHQ_URL or config.database.host;
mongoose.connect host, null, (err) ->
  if err
    console.log "There was a problem connecting to MongoDB host #{ host }: #{ err }"
    process.exit()
  else
    console.log "Successfully connecting to MongoDB host #{ host }"
    startServer()



###################################################################
# Start Server
###################################################################

startServer = ->
  server.listen app.get('port'), ->
    console.log "Express server listening on port #{ app.get('port') }"
