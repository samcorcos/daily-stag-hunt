Template._featured.helpers
  featured: ->
    temp = Posts.find({ featured: true }).fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    temp[0]
