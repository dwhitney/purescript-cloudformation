module AWS.DMS.EventSubscription where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type EventSubscription =
  { "SnsTopicArn" :: String
  , "SourceType" :: Maybe String
  , "EventCategories" :: Maybe (Array String)
  , "Enabled" :: Maybe Boolean
  , "SubscriptionName" :: Maybe String
  , "SourceIds" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

eventSubscription :: { "SnsTopicArn" :: String } -> EventSubscription
eventSubscription required =
  merge required
    { "SourceType" : Nothing
    , "EventCategories" : Nothing
    , "Enabled" : Nothing
    , "SubscriptionName" : Nothing
    , "SourceIds" : Nothing
    , "Tags" : Nothing
    }