var Category,auth;auth=require("./../lib/auth"),Category=require("./../models/category"),module.exports=function(a){var b,c;return b={opinions:{}},c=a.locals.mongoose,b.index=function(a,b){var c;return c=Category.find(),c.exec(function(a,c){return a?b.status(500).send(a):b.status(200).send(c)})},b};