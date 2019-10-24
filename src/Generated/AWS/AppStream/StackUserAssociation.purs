module CloudFormation.AWS.AppStream.StackUserAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppStream::StackUserAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html
-- |
-- | - `SendEmailNotification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-sendemailnotification
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-username
-- | - `StackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-stackname
-- | - `AuthenticationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackuserassociation.html#cfn-appstream-stackuserassociation-authenticationtype
newtype StackUserAssociation = StackUserAssociation
  { "UserName" :: String
  , "StackName" :: String
  , "AuthenticationType" :: String
  , "SendEmailNotification" :: Maybe Boolean
  }

derive instance newtypeStackUserAssociation :: Newtype StackUserAssociation _
instance resourceStackUserAssociation :: Resource StackUserAssociation where type_ _ = "AWS::AppStream::StackUserAssociation"

stackUserAssociation :: { "UserName" :: String, "StackName" :: String, "AuthenticationType" :: String } -> StackUserAssociation
stackUserAssociation required = StackUserAssociation
  (merge required
    { "SendEmailNotification" : Nothing
    })