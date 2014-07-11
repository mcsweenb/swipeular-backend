var Entity,User,auth;auth=require("./../lib/auth.js"),Entity=require("./../models/entity.js"),User=require("./../models/user.js"),module.exports=function(a){var b,c;return b={},c=a.locals.mongoose,b.seed=function(a,b){var c,d;return d=require("./../config/seeds"),c=[],User.remove({}).exec(function(){var a,b,e,f,g,h,i;for(console.log("all users have been removed"),console.log("planting new user seeds ("+d.users.length+" in total)..."),h=d.users,i=[],a=f=0,g=h.length;g>f;a=++f)e=h[a],b=new User(e),b.setPassword(b.password),console.log("...saving user #"+a+": "+b.email),i.push(b.save(function(a){return a?(console.log("...error saving user: "+a),c.push(a)):void 0}));return i}),Entity.remove({}).exec(function(){var a,b,e,f,g,h,i;for(console.log("all entities have been removed"),console.log("planting new entity seeds ("+d.entities.length+" in total)..."),h=d.entities,i=[],e=f=0,g=h.length;g>f;e=++f)b=h[e],a=new Entity(b),console.log("...saving entity #"+e+": "+a.name),i.push(a.save(function(a){return a?(console.log("...error saving entity: "+a),c.push(a)):void 0}));return i}),c.length>0?b.status(422).send(c):b.status(200).send(""+d.users.length+" users and "+d.entities.length+" entities planted successfully")},b.signOutAllUsers=function(a,b){return User.update({},{$set:{authenticationToken:null}},{multi:!0}).exec(function(a,c){return console.log("all users signed out, update count:",c),a?b.status(500).send(a):b.status(204).send("All users have been signed out.")})},b};