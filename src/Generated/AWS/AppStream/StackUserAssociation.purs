module CloudFormation.AWS.AppStream.StackUserAssociation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "UserName" :: Value String
  , "StackName" :: Value String
  , "AuthenticationType" :: Value String
  , "SendEmailNotification" :: Maybe (Value Boolean)
  }

derive instance newtypeStackUserAssociation :: Newtype StackUserAssociation _
derive newtype instance writeStackUserAssociation :: WriteForeign StackUserAssociation
instance resourceStackUserAssociation :: Resource StackUserAssociation where type_ _ = "AWS::AppStream::StackUserAssociation"

stackUserAssociation :: { "UserName" :: Value String, "StackName" :: Value String, "AuthenticationType" :: Value String } -> StackUserAssociation
stackUserAssociation required = StackUserAssociation
  (merge required
    { "SendEmailNotification" : Nothing
    })