var User,bcrypt,mongoose,userSchema,_;_=require("underscore"),bcrypt=require("bcryptjs"),mongoose=require("mongoose"),userSchema=new mongoose.Schema({facebookId:{type:String,index:{unique:!0,sparse:!0}},googleId:{type:String,index:{unique:!0,sparse:!0}},twitterId:{type:String,index:{unique:!0,sparse:!0}},authenticationToken:{type:String},email:{type:String},name:{type:String},profileUrl:{type:String},imageUrl:{type:String},location:{type:String},gender:{type:String},facebookFriends:{type:Array},twitterFollowers:{type:Array},bookmarks:{type:Array,"default":[]}}),User=mongoose.model("User",userSchema),User.prototype.generateAndSetAuthenticationToken=function(a){return this.authenticationToken&&!a?this.authenticationToken:this.authenticationToken=bcrypt.hashSync((new Date).getTime()+Math.random(),bcrypt.genSaltSync(10))},User.prototype.unsetAuthenticationToken=function(){return this.authenticationToken=null},User.prototype.setPassword=function(a){return a?this.password=bcrypt.hashSync(a,bcrypt.genSaltSync(10)):void 0},User.prototype.verifyPassword=function(a){return bcrypt.compareSync(a,this.password)},User.prototype.getBasicProfileObject=function(){var a;return a=this.toObject(),delete a.facebookFriends,delete a.twitterFollowers,a},module.exports=User;