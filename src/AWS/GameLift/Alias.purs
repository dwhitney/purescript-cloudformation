module AWS.GameLift.Alias where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Alias =
  { "Name" :: String
  , "RoutingStrategy" :: RoutingStrategy
  , "Description" :: Maybe String
  }

alias :: { "Name" :: String, "RoutingStrategy" :: RoutingStrategy } -> Alias
alias required =
  merge required
    { "Description" : Nothing
    }

type RoutingStrategy =
  { "Type" :: String
  , "FleetId" :: Maybe String
  , "Message" :: Maybe String
  }

routingStrategy :: { "Type" :: String } -> RoutingStrategy
routingStrategy required =
  merge required
    { "FleetId" : Nothing
    , "Message" : Nothing
    }