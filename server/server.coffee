if Meteor.users.find().count() is 0

  Accounts.createUser
    username: "samcorcos"
    password: "sampassword"
    profile:
      roles: ["admin"]

  Accounts.createUser
    username: "jasinclair"
    password: "sinclairpassword"
    profile:
      roles: ["admin"]

  Accounts.createUser
    username: "kyleakin"
    password: "akinpassword"
    profile:
      roles: ["admin"]
