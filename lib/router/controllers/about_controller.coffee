@AboutController = RouteController.extend(
  template: "about"
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
