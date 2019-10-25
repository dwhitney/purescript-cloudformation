module CloudFormation.AWS.PinpointEmail.Identity where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "FeedbackForwardingEnabled" :: Maybe (Value Boolean)
  , "DkimSigningEnabled" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tags))
  , "MailFromAttributes" :: Maybe (Value MailFromAttributes)
  }

derive instance newtypeIdentity :: Newtype Identity _
derive newtype instance writeIdentity :: WriteForeign Identity
instance resourceIdentity :: Resource Identity where type_ _ = "AWS::PinpointEmail::Identity"

identity :: { "Name" :: Value String } -> Identity
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
  { "MailFromDomain" :: Maybe (Value String)
  , "BehaviorOnMxFailure" :: Maybe (Value String)
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
  { "Value" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }