mongoose = require 'mongoose'

categorySchema = new mongoose.Schema(

  _id:
    type: String
    require: true
    index: { unique: true }
    
  name:
    type: String
    required: true
    trim: true

)

Category = mongoose.model 'Category', categorySchema

module.exports = Category