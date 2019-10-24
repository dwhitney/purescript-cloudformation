module CloudFormation.AWS.PinpointEmail.ConfigurationSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::PinpointEmail::ConfigurationSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html-- |
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
type ConfigurationSet =
  { "Name" :: String
  , "SendingOptions" :: Maybe SendingOptions
  , "TrackingOptions" :: Maybe TrackingOptions
  , "ReputationOptions" :: Maybe ReputationOptions
  , "DeliveryOptions" :: Maybe DeliveryOptions
  , "Tags" :: Maybe (Array Tags)
  }

configurationSet :: { "Name" :: String } -> ConfigurationSet
configurationSet required =
  merge required
    { "SendingOptions" : Nothing
    , "TrackingOptions" : Nothing
    , "ReputationOptions" : Nothing
    , "DeliveryOptions" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::PinpointEmail::ConfigurationSet.TrackingOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html-- |
-- | - `CustomRedirectDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-trackingoptions.html#cfn-pinpointemail-configurationset-trackingoptions-customredirectdomain
type TrackingOptions =
  { "CustomRedirectDomain" :: Maybe String
  }

trackingOptions :: TrackingOptions
trackingOptions =
  { "CustomRedirectDomain" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.DeliveryOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html-- |
-- | - `SendingPoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html#cfn-pinpointemail-configurationset-deliveryoptions-sendingpoolname
type DeliveryOptions =
  { "SendingPoolName" :: Maybe String
  }

deliveryOptions :: DeliveryOptions
deliveryOptions =
  { "SendingPoolName" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.ReputationOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html-- |
-- | - `ReputationMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-reputationoptions.html#cfn-pinpointemail-configurationset-reputationoptions-reputationmetricsenabled
type ReputationOptions =
  { "ReputationMetricsEnabled" :: Maybe Boolean
  }

reputationOptions :: ReputationOptions
reputationOptions =
  { "ReputationMetricsEnabled" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.Tags`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-key
type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSet.SendingOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html-- |
-- | - `SendingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-sendingoptions.html#cfn-pinpointemail-configurationset-sendingoptions-sendingenabled
type SendingOptions =
  { "SendingEnabled" :: Maybe Boolean
  }

sendingOptions :: SendingOptions
sendingOptions =
  { "SendingEnabled" : Nothing
  }