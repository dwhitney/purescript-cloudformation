module CloudFormation.AWS.AppStream.StackUserAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type StackUserAssociation =
  { "UserName" :: String
  , "StackName" :: String
  , "AuthenticationType" :: String
  , "SendEmailNotification" :: Maybe Boolean
  }

stackUserAssociation :: { "UserName" :: String, "StackName" :: String, "AuthenticationType" :: String } -> StackUserAssociation
stackUserAssociation required =
  merge required
    { "SendEmailNotification" : Nothing
    }