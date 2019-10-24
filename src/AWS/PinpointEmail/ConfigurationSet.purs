module AWS.PinpointEmail.ConfigurationSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type TrackingOptions =
  { "CustomRedirectDomain" :: Maybe String
  }

trackingOptions :: TrackingOptions
trackingOptions =
  { "CustomRedirectDomain" : Nothing
  }

type DeliveryOptions =
  { "SendingPoolName" :: Maybe String
  }

deliveryOptions :: DeliveryOptions
deliveryOptions =
  { "SendingPoolName" : Nothing
  }

type ReputationOptions =
  { "ReputationMetricsEnabled" :: Maybe Boolean
  }

reputationOptions :: ReputationOptions
reputationOptions =
  { "ReputationMetricsEnabled" : Nothing
  }

type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }

type SendingOptions =
  { "SendingEnabled" :: Maybe Boolean
  }

sendingOptions :: SendingOptions
sendingOptions =
  { "SendingEnabled" : Nothing
  }