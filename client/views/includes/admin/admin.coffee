Template.admin.rendered = ->
  this.$('[data-toggle="dropdown"]').dropdown()


Template.newPost.rendered = ->
  $('#summernote').summernote()

Template.newPost.helpers
  tempImage: ->
    Session.get "image"


Template.newPost.events
  'click #image': (e,t) ->
    e.preventDefault()
    # filepicker.setKey "A5GNMAn95SgWSLlOY0FYaz"
    filepicker.pick (Blob) ->
      console.log Blob.url
      Session.set 'image', Blob.url

  'click #submit': (e,t) ->
    e.preventDefault()

    sHTML = $('#summernote').code()
    title = t.find('#title').value
    subtitle = t.find('#subtitle').value unless t.find('#subtitle').value is ""
    featured = if $('#featured').is(':checked') is true then true else false
    date = new Date()
    description = t.find('#description').value
    category = undefined
    image = Session.get 'image'

    if $('#biggie').is(':checked') is true
      category = 'biggie'
    else if $('#inquiry').is(':checked') is true
      category = 'inquiry'
    else if $('#advice').is(':checked') is true
      category = 'advice'

    Posts.insert
      title: title
      subtitle: subtitle
      description: description
      content: sHTML
      date: new Date()
      featured: featured
      category: category
      image: image


    alert "Successfully created new post!"
