module AWS.Logs.SubscriptionFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SubscriptionFilter =
  { "DestinationArn" :: String
  , "FilterPattern" :: String
  , "LogGroupName" :: String
  , "RoleArn" :: Maybe String
  }

subscriptionFilter :: { "DestinationArn" :: String, "FilterPattern" :: String, "LogGroupName" :: String } -> SubscriptionFilter
subscriptionFilter required =
  merge required
    { "RoleArn" : Nothing
    }