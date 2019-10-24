module AWS.Greengrass.SubscriptionDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type SubscriptionDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe SubscriptionDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

subscriptionDefinition :: { "Name" :: String } -> SubscriptionDefinition
subscriptionDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

type Subscription =
  { "Target" :: String
  , "Id" :: String
  , "Source" :: String
  , "Subject" :: String
  }

subscription :: { "Target" :: String, "Id" :: String, "Source" :: String, "Subject" :: String } -> Subscription
subscription required =
  required

type SubscriptionDefinitionVersion =
  { "Subscriptions" :: Array Subscription
  }

subscriptionDefinitionVersion :: { "Subscriptions" :: Array Subscription } -> SubscriptionDefinitionVersion
subscriptionDefinitionVersion required =
  required