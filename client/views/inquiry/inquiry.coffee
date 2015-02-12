Template.inquiryLanding.helpers
  inquiryPost: ->
    Posts.find
      "category": "inquiry"
