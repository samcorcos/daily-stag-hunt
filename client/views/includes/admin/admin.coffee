Template.admin.rendered = ->
  $('#summernote').summernote()

Template.admin.events
  'click #submit': (e,t) ->
    e.preventDefault()
    sHTML = $('#summernote').code()
