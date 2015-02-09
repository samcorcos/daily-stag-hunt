Template.admin.rendered = ->
  this.$('[data-toggle="dropdown"]').dropdown()


Template.newPost.rendered = ->
  $('#summernote').summernote()

Template.newPost.events
  'click #submit': (e,t) ->
    e.preventDefault()

    sHTML = $('#summernote').code()

    titlePattern = ///(<h2>)(.+)(</h2>)///
    title = sHTML.match(titlePattern)[2]

    # Posts.insert
    #   title: title
    #   content: sHTML
    #   date: new Date()

    alert "Successfully created new post!"
