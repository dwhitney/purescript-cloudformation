module AWS.Cognito.UserPoolUserToGroupAttachment where 




type UserPoolUserToGroupAttachment =
  { "GroupName" :: String
  , "UserPoolId" :: String
  , "Username" :: String
  }

userPoolUserToGroupAttachment :: { "GroupName" :: String, "UserPoolId" :: String, "Username" :: String } -> UserPoolUserToGroupAttachment
userPoolUserToGroupAttachment required =
  required