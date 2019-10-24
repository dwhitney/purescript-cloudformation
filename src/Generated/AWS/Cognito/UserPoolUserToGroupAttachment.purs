module CloudFormation.AWS.Cognito.UserPoolUserToGroupAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::UserPoolUserToGroupAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-groupname
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-userpoolid
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-username
newtype UserPoolUserToGroupAttachment = UserPoolUserToGroupAttachment
  { "GroupName" :: String
  , "UserPoolId" :: String
  , "Username" :: String
  }

derive instance newtypeUserPoolUserToGroupAttachment :: Newtype UserPoolUserToGroupAttachment _
instance resourceUserPoolUserToGroupAttachment :: Resource UserPoolUserToGroupAttachment where type_ _ = "AWS::Cognito::UserPoolUserToGroupAttachment"

userPoolUserToGroupAttachment :: { "GroupName" :: String, "UserPoolId" :: String, "Username" :: String } -> UserPoolUserToGroupAttachment
userPoolUserToGroupAttachment required = UserPoolUserToGroupAttachment
  required