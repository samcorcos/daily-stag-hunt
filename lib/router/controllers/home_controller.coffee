@HomeController = RouteController.extend(
  template: "home"
  yieldTemplates: {}

  onBeforeAction: ->

    @next()
    return

  action: ->

    @render()
    return

  waitOn: ->
    [
      Meteor.subscribe "posts"
    ]

  data: ->
    params: @params or {}

  onAfterAction: ->

)
