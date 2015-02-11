Template.registerHelper 'featuredFilter', (x) ->
  truncated = x?.split("").slice(0,200).join("") + "..."

Template.registerHelper 'thumbnailFilter', (x) ->
  truncated = x?.split("").slice(0,100).join("") + "..."


# Template.registerHelper "downPaymentAmount", (x,y,z,a) ->
#   downPaymentAmount(x,y,z,a).formatMoney(0)


Template.registerHelper 'isAdmin', (x) ->
  if Meteor.user()?.profile.roles.indexOf("admin") > -1 then true else false

Accounts.config
  forbidClientAccountCreation : true

Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY'
