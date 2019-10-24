module AWS.IAM.UserToGroupAddition where 




type UserToGroupAddition =
  { "GroupName" :: String
  , "Users" :: Array String
  }

userToGroupAddition :: { "GroupName" :: String, "Users" :: Array String } -> UserToGroupAddition
userToGroupAddition required =
  required