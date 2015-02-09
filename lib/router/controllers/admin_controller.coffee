@AdminController = RouteController.extend(
  template: "admin"
  yieldTemplates: {}

  onBeforeAction: ->
    loadFilePicker('A5GNMAn95SgWSLlOY0FYaz');

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
