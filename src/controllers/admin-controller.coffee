_ = require 'underscore'
auth = require './../lib/auth'
request = require 'request'
Category = require './../models/category'
Entity = require './../models/entity'
User = require './../models/user'

module.exports = (app) ->

  controller = {}
  config = app.locals.config
  mongoose = app.locals.mongoose

  controller.signOutAllUsers = (req, res) ->
    User.update({}, { $set: { authenticationToken: null } }, { multi: true }).exec (err, updateCount) ->
      console.log 'all users signed out, update count:', updateCount
      if err then res.status(500).send err
      else res.status(200).send 'All users have been signed out.'

  seedPopularityPreferences =

    # Celebrities & Newsmakers
    "Beyonce Flaunts New Bob": "slightly unpopular"
    "Edward Snowden": "slightly popular"
    "Guy Fieri": "unpopular"
    "Justin Bieber": "unpopular"
    "Miley Cyrus' VMA Twerk": "unpopular"
    "Rob Ford": "unpopular"
    
    # Entertainment
    "Downton Abbey": "slightly popular"
    "Heisenberg": "popular"
    "Girls": "controversial"
    "Macklemore wins 4 Grammys": "slightly popular"
    "The Hunger Games: Catching Fire": "controversial"
    "Sex & the City": "controversial"
    "NFL Super Bowl XLVIII": "slightly popular"
    
    # Food & Drink
    "Beer": "popular"
    "Doritos Locos Tacos": "controversial"
    "Red Quinoa & Black Bean Salad": "slightly popular"
    "Doughscuit: A glazed Doughnut & Biscuit hybrid": "controversial"
    "Make a Superbowl \"Snackadium\"": "slightly unpopular"
    "Cronut": "popular"
    
    # Design
    "Cosmic Shower Curtain": "slightly unpopular"
    "Studio Ombre Table Lamp": "slightly popular"
    "Conran Elder Chair": "controversial"
    "Bucky Deer Trophy Head": "controversial"
    "Team USA Sochi 2014 Uniforms": "unpopular"
    
    # Men's Fashion
    "Levi's Classic Camo Windbreaker": "popular"
    "St. John's Bay® Button-Front Plaid Poplin Shirt": "popular"
    "Claiborne Cashmere Cable Sweater": "controversial"
    "Dockers Shawl-Collar Cardigan": "controversial"
    "Pepperoni Sweatshirt": "unpopular"
    "St. John's Bay Parka": "slightly popular"
    "Stacy Adams Dumont Mens Cap Toe Lace Up Oxfords": "popular"
    "Stafford Travel Flat-Front Gabardine Trousers": "slightly unpopular"
    
    # Products
    "Impressa C5 Dual Espresso Maker": "slightly popular"
    "Lego Kids Star Wars Boba Fett Alarm Clock": "controversial"
    "Nostalgia Electrics Electric Nut Butter Maker": "controversial"
    "Rubik's Cube": "slightly unpopular"
    
    # Technology
    "Amazon Prime Air": "controversial"
    "iPhone 5s in Gold": "slightly popular"
    "Samsung Galaxy S4": "slightly popular"
    
    # Women's Fashion
    "Chiffon Blouse": "slightly popular"
    "Jeffrey Cambell Quincy Heel": "controversial"
    "Drawstring-Waist Taffeta Skirt": "slightly popular"
    "Skinny Trousers": "slightly popular"
    "Vegan Vest": "controversial"

    
  controller.seedOpinions = (req, res) ->
    User.find({}).exec (err, users) ->
      if err then res.status(500).send err
      else
        Entity.find({}).exec (err, entities) ->
          if err then res.status(500).send err
          else
            opinionsSent = 0
            opinionsReceived = 0

            checkIfFinishedSeedingOpinions = ->
              if opinionsSent > 0 and opinionsReceived == opinionsSent
                res.status(200).send "finished seeding opinions"

            createOpinion = (entity, user, like) ->
              console.log '...creating opinion, entity._id: ', entity._id, ', user._id: ', user._id, ', like: ', like
              opinionsSent++
              selectQuery = { _id: entity._id, 'opinions.userId': user._id }
              updateQuery = { $set: { 'opinions.$.like': like } }
              Entity.update(selectQuery, updateQuery).exec (err, updateCount) ->
                if err
                  opinionsReceived++
                  checkIfFinishedSeedingOpinions()
                else
                  if updateCount > 0
                    Entity.updateLikeCountsForEntityWithId entity._id
                    opinionsReceived++
                    checkIfFinishedSeedingOpinions()
                  else
                    selectQuery = { _id: entity._id }
                    updateQuery = { $push: { opinions: { userId: user._id, like: like } } }
                    Entity.update(selectQuery, updateQuery).exec (err, updateCount) ->
                      if err
                        opinionsReceived++
                        checkIfFinishedSeedingOpinions()
                      else
                        Entity.updateLikeCountsForEntityWithId entity._id
                        opinionsReceived++
                        checkIfFinishedSeedingOpinions()

            for entity in entities
              seedPopularityPreference = seedPopularityPreferences[entity.name] or _.sample(['popular', 'slightly popular', 'controversial', 'slightly unpopular', 'unpopular'])
              switch seedPopularityPreference
                when 'popular'
                  oddsOfLiking = 88
                when 'slightly popular'
                  oddsOfLiking = 70
                when 'controversial'
                  oddsOfLiking = 50
                when 'slightly unpopular'
                  oddsOfLiking = 30
                when 'unpopular'
                  oddsOfLiking = 12
              for user in users
                like = _.random(0, 100) < oddsOfLiking
                createOpinion entity, user, like


  controller.seed = (req, res) ->
    
    # if app.settings.env is 'production' then return res.status(401).send()

    seeds = require './../config/seeds'

    seedStatus =
      categories:
        truncated: false
        total: if seeds.categories then seeds.categories.length else 0
        inserts: 0
        errors: []
      entities:
        truncated: false
        total: if seeds.entities then seeds.entities.length else 0
        inserts: 0
        errors: []
      users:
        truncated: false
        total: 40 # if seeds.users then seeds.users.length else 0
        inserts: 0
        errors: []

    User.remove({}).exec (err) ->
      console.log 'all users have been removed'
      seedStatus.users.truncated = true
      console.log "planting new user seeds (#{ seedStatus.users.total } in total)..."
      for i in [1..seedStatus.users.total]
        user = new User
          email: "yay.or.nay.dummy.user.#{ i }@gmail.com"
          name: "Dummy User #{ i }"
          imageUrl: ''
        user.generateAndSetAuthenticationToken()
        console.log "... saving user #{ user.name }"
        user.save (err) ->
          if err
            console.log "......error saving user: #{ err }"
            seedStatus.users.errors.push err
          else
            seedStatus.users.inserts++
          statusUpdated()

    Category.remove({}).exec (err) ->
      console.log 'all categories have been removed'
      seedStatus.categories.truncated = true
      if seeds.categories
        console.log 'planting new category seeds (#{ seeds.categories.length } in total)...'
        for categoryData, i in seeds.categories
          category = new Category categoryData
          console.log "...saving category ##{ i }: #{ category.name }"
          category.save (err) ->
            if err
              console.log "......error saving category: #{ err }"
              seedStatus.categories.errors.push err
            else
              seedStatus.categories.inserts++
            statusUpdated()

    Entity.remove({}).exec (err) ->
      console.log 'all entities have been removed'
      seedStatus.entities.truncated = true
      if seeds.entities
        console.log "planting new entity seeds (#{ seeds.entities.length } in total)..."
        for entityData, i in seeds.entities
          entity = new Entity entityData
          console.log "...saving entity ##{ i }: #{ entity.name }"
          if not _.findWhere seeds.categories, { _id: entity.category }
            seedStatus.entities.errors.push { message: "#{ entity.name }'s category is not valid" }
            statusUpdated()
          else
            entity.save (err) ->
              if err
                console.log "......error saving entity: #{ entity.name } - #{ err }"
                seedStatus.entities.errors.push err
              else
                seedStatus.entities.inserts++
              statusUpdated()

    
    statusUpdated = ->
      responseText = ''
      for collectionName, status of seedStatus
        return if status.inserts + status.errors.length < status.total
        responseText += "<b>#{ collectionName }:</b><br>"
        responseText += "...successfully truncated<br>" if status.truncated
        responseText += "...#{ status.inserts } created<br>"
        responseText += "...#{ status.errors.length } errors<br>"
        for error in status.errors
          responseText += "......#{ JSON.stringify(error) }<br>"
        responseText += '<br>'
      res.status(200).send(responseText)

  controller