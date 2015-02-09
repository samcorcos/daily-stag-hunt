@Posts = new Mongo.Collection 'posts'

if Meteor.isServer
  Meteor.publish 'posts', ->
    Posts.find()

  Posts.allow
    insert: () ->
      true
    update: () ->
      true
    remove: () ->
      true

if Meteor.isClient
  Meteor.subscribe 'posts'
