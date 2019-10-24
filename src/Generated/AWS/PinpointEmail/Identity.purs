module CloudFormation.AWS.PinpointEmail.Identity where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::PinpointEmail::Identity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html
-- |
-- | - `FeedbackForwardingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-feedbackforwardingenabled
-- | - `DkimSigningEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-dkimsigningenabled
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-name
-- | - `MailFromAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-identity.html#cfn-pinpointemail-identity-mailfromattributes
newtype Identity = Identity
  { "Name" :: String
  , "FeedbackForwardingEnabled" :: Maybe Boolean
  , "DkimSigningEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tags)
  , "MailFromAttributes" :: Maybe MailFromAttributes
  }

derive instance newtypeIdentity :: Newtype Identity _
instance resourceIdentity :: Resource Identity where type_ _ = "AWS::PinpointEmail::Identity"

identity :: { "Name" :: String } -> Identity
identity required = Identity
  (merge required
    { "FeedbackForwardingEnabled" : Nothing
    , "DkimSigningEnabled" : Nothing
    , "Tags" : Nothing
    , "MailFromAttributes" : Nothing
    })

-- | `AWS::PinpointEmail::Identity.MailFromAttributes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html
-- |
-- | - `MailFromDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-mailfromdomain
-- | - `BehaviorOnMxFailure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-behavioronmxfailure
type MailFromAttributes =
  { "MailFromDomain" :: Maybe String
  , "BehaviorOnMxFailure" :: Maybe String
  }

mailFromAttributes :: MailFromAttributes
mailFromAttributes =
  { "MailFromDomain" : Nothing
  , "BehaviorOnMxFailure" : Nothing
  }

-- | `AWS::PinpointEmail::Identity.Tags`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-key
type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }