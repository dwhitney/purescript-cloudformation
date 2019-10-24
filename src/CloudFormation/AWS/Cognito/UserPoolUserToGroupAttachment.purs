module CloudFormation.AWS.Cognito.UserPoolUserToGroupAttachment where 




-- | `AWS::Cognito::UserPoolUserToGroupAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-groupname
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-userpoolid
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-username
type UserPoolUserToGroupAttachment =
  { "GroupName" :: String
  , "UserPoolId" :: String
  , "Username" :: String
  }

userPoolUserToGroupAttachment :: { "GroupName" :: String, "UserPoolId" :: String, "Username" :: String } -> UserPoolUserToGroupAttachment
userPoolUserToGroupAttachment required =
  required