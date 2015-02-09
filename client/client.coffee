Template.registerHelper 'featuredFilter', (x) ->

Template.registerHelper 'thumbnailFilter', (x) ->


# Template.registerHelper "downPaymentAmount", (x,y,z,a) ->
#   downPaymentAmount(x,y,z,a).formatMoney(0)


Template.registerHelper 'isAdmin', (x) ->
  if Meteor.user()?.profile.roles.indexOf("admin") > -1 then true else false

Accounts.config
  forbidClientAccountCreation : true

Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY'
