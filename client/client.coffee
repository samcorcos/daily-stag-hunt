Template.registerHelper 'featuredFilter', (x) ->
  truncated = x?.split("").slice(0,200).join("") + "..."

Template.registerHelper 'thumbnailFilter', (x) ->
  truncated = x?.split("").slice(0,100).join("") + "..."


Template.registerHelper 'isAdmin', (x) ->
  if Meteor.user()?.profile.roles.indexOf("admin") > -1 then true else false

Accounts.config
  forbidClientAccountCreation : true

Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY'

Template.registerHelper 'formatDate', (x) ->
  moment(x).format('MM/DD/YYYY')
