var Entity,auth;auth=require("./../lib/auth.js"),Entity=require("./../models/entity.js"),module.exports=function(a){var b,c;return b={opinions:{}},c=a.locals.mongoose,b.index=function(a,b){var c;return c=Entity.find(),c.select("-opinions"),a.query.limit&&c.limit(a.query.limit),c.exec(function(a,c){return a?b.status(500).send(a):b.status(200).send(c)})},b.create=function(a,b){var c;return c=new Entity(a.body),c.save(function(a){return a?b.status(422).send(a):b.status(201).send(c)})},b.opinions.create=function(a,b){var c,d;return c=a.params.id,d=a.body.like,auth.authenticateRequest(a,b,function(a){var e,f;return c?(e={_id:c,"opinions.userId":a._id},f={$set:{"opinions.$.like":d}},Entity.update(e,f).exec(function(g,h){return g?b.status(422).send(g):h>0?(Entity.updateLikeCountsForEntityWithId(c),b.status(204).send()):(e={_id:c},f={$push:{opinions:{userId:a._id,like:d}}},Entity.update(e,f).exec(function(a){return a?b.status(422).send(a):(Entity.updateLikeCountsForEntityWithId(c),b.status(201).send())}))})):b.status(422).send({errors:{entityId:"is required"}})})},b};