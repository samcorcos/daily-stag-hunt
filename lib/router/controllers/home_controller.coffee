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
    []

  data: ->
    params: @params or {}

  onAfterAction: ->

)
