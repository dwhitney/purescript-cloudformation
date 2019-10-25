module CloudFormation.AWS.Cognito.UserPoolUserToGroupAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "GroupName" :: Value String
  , "UserPoolId" :: Value String
  , "Username" :: Value String
  }

derive instance newtypeUserPoolUserToGroupAttachment :: Newtype UserPoolUserToGroupAttachment _
derive newtype instance writeUserPoolUserToGroupAttachment :: WriteForeign UserPoolUserToGroupAttachment
instance resourceUserPoolUserToGroupAttachment :: Resource UserPoolUserToGroupAttachment where type_ _ = "AWS::Cognito::UserPoolUserToGroupAttachment"

userPoolUserToGroupAttachment :: { "GroupName" :: Value String, "UserPoolId" :: Value String, "Username" :: Value String } -> UserPoolUserToGroupAttachment
userPoolUserToGroupAttachment required = UserPoolUserToGroupAttachment
  required