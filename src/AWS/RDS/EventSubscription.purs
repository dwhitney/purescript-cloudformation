module AWS.RDS.EventSubscription where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EventSubscription =
  { "SnsTopicArn" :: String
  , "Enabled" :: Maybe Boolean
  , "EventCategories" :: Maybe (Array String)
  , "SourceIds" :: Maybe (Array String)
  , "SourceType" :: Maybe String
  }

eventSubscription :: { "SnsTopicArn" :: String } -> EventSubscription
eventSubscription required =
  merge required
    { "Enabled" : Nothing
    , "EventCategories" : Nothing
    , "SourceIds" : Nothing
    , "SourceType" : Nothing
    }