Router.configure
  layoutTemplate: "layout"
  notFoundTemplate: "notFound"
  loadingTemplate: "loading"

Router.map ->

  @route "home",
    path: "/"
    controller: "HomeController"

  @route "about",
    path: "/about"
    controller: "AboutController"

  @route "admin",
    path: "/admin"

  @route "biggieLanding",
    path: "/biggie"

  @route "inquiryLanding",
    path: "/inquiry"

  @route "inquiry",
    path: "inquiry/:_id"
    data: ->
      Posts.findOne @params._id
    waitOn: ->
      [
        Meteor.subscribe "posts"
      ]

  @route "biggie",
    path: "biggie/:_id"
    data: ->
      Posts.findOne @params._id
    waitOn: ->
      [
        Meteor.subscribe "posts"
      ]

  @route "advice",
    path: "advice/:_id"
    data: ->
      Posts.findOne @params._id
    waitOn: ->
      [
        Meteor.subscribe "posts"
      ]

  return
