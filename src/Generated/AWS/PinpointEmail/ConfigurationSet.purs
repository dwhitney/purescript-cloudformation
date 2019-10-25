module CloudFormation.AWS.PinpointEmail.ConfigurationSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::PinpointEmail::ConfigurationSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html
-- |
-- | - `SendingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-sendingoptions
-- | - `TrackingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-trackingoptions
-- | - `ReputationOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-reputationoptions
-- | - `DeliveryOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-deliveryoptions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-name
newtype ConfigurationSet = ConfigurationSet
  { "Name" :: Value String
  , "SendingOptions" :: Maybe (Value SendingOptions)
  , "TrackingOptions" :: Maybe (Value TrackingOptions)
  , "ReputationOptions" :: Maybe (Value ReputationOptions)
  , "DeliveryOptions" :: Maybe (Value DeliveryOptions)
  , "Tags" :: Maybe (Value (Array Tags))
  }

derive instance newtypeConfigurationSet :: Newtype ConfigurationSet _
derive newtype instance writeConfigurationSet :: WriteForeign ConfigurationSet
instance resourceConfigurationSet :: Resource ConfigurationSet where type_ _ = "AWS::PinpointEmail::ConfigurationSet"

configurationSet :: { "Name" :: Value String } -> ConfigurationSet
configurationSet required = ConfigurationSet
  (merge required
    { "SendingOptions" : Nothing
    , "TrackingOptions" : Nothing
    , "ReputationOptions" : Nothing
    , "DeliveryOptions" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::PinpointEmail::ConfigurationSet.TrackingOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html
-- |
-- | - `CustomRedirectDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html#cfn-pinpointemail-configurationset-trackingoptions-customredirectdomain
type TrackingOptions =
  { "CustomRedirectDomain" :: Maybe (Value String)
  }

trackingOptions :: TrackingOptions
trackingOptions =
  { "CustomRedirectDomain" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.DeliveryOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html
-- |
-- | - `SendingPoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html#cfn-pinpointemail-configurationset-deliveryoptions-sendingpoolname
type DeliveryOptions =
  { "SendingPoolName" :: Maybe (Value String)
  }

deliveryOptions :: DeliveryOptions
deliveryOptions =
  { "SendingPoolName" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.ReputationOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html
-- |
-- | - `ReputationMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html#cfn-pinpointemail-configurationset-reputationoptions-reputationmetricsenabled
type ReputationOptions =
  { "ReputationMetricsEnabled" :: Maybe (Value Boolean)
  }

reputationOptions :: ReputationOptions
reputationOptions =
  { "ReputationMetricsEnabled" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.Tags`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-key
type Tags =
  { "Value" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.SendingOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html
-- |
-- | - `SendingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html#cfn-pinpointemail-configurationset-sendingoptions-sendingenabled
type SendingOptions =
  { "SendingEnabled" :: Maybe (Value Boolean)
  }

sendingOptions :: SendingOptions
sendingOptions =
  { "SendingEnabled" : Nothing
  }