auth = require './../lib/auth'
Category = require './../models/category'

module.exports = (app) ->

  controller = { opinions: {} }
  mongoose = app.locals.mongoose

  controller.index = (req, res) ->
    query = Category.find()
    query.exec (err, categories) ->
      if err then res.status(500).send err
      else
        res.status(200).send categories

  controller