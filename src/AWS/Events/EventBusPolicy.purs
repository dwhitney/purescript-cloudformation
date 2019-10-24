module AWS.Events.EventBusPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EventBusPolicy =
  { "Action" :: String
  , "StatementId" :: String
  , "Principal" :: String
  , "EventBusName" :: Maybe String
  , "Condition" :: Maybe Condition
  }

eventBusPolicy :: { "Action" :: String, "StatementId" :: String, "Principal" :: String } -> EventBusPolicy
eventBusPolicy required =
  merge required
    { "EventBusName" : Nothing
    , "Condition" : Nothing
    }

type Condition =
  { "Type" :: Maybe String
  , "Value" :: Maybe String
  , "Key" :: Maybe String
  }

condition :: Condition
condition =
  { "Type" : Nothing
  , "Value" : Nothing
  , "Key" : Nothing
  }