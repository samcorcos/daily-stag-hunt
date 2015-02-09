Template._featured.helpers
  featured: ->
    temp = Posts.find({ featured: true }).fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    temp[0]

Template._columnOne.helpers
  oneOfThree: ->
    temp = Posts.find().fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    oneOfThree = []
    for post, i in temp
      oneOfThree.push(post) if i % 3 is 0
    oneOfThree

Template._columnTwo.helpers
  twoOfThree: ->
    temp = Posts.find().fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    twoOfThree = []
    for post, i in temp
      twoOfThree.push(post) if (i-1) % 3 is 0
    twoOfThree

Template._columnThree.helpers
  threeOfThree: ->
    temp = Posts.find().fetch()
    temp.sort (a,b) ->
      b.date.getTime() - a.date.getTime() # this returns the most recent first
    threeOfThree = []
    for post, i in temp
      threeOfThree.push(post) if (i-2) % 3 is 0
    threeOfThree
