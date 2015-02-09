Template._featured.helpers
  featured: ->
    temp = Posts.find().fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    console.log temp
