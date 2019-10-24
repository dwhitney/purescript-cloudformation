module CloudFormation.AWS.Events.EventBus where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EventBus =
  { "Name" :: String
  , "EventSourceName" :: Maybe String
  }

eventBus :: { "Name" :: String } -> EventBus
eventBus required =
  merge required
    { "EventSourceName" : Nothing
    }