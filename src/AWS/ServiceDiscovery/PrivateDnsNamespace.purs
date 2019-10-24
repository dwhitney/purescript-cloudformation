module AWS.ServiceDiscovery.PrivateDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


type PrivateDnsNamespace =
  { "Vpc" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  }

privateDnsNamespace :: { "Vpc" :: String, "Name" :: String } -> PrivateDnsNamespace
privateDnsNamespace required =
  merge required
    { "Description" : Nothing
    }