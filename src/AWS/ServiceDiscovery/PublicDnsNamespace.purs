module AWS.ServiceDiscovery.PublicDnsNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


type PublicDnsNamespace =
  { "Name" :: String
  , "Description" :: Maybe String
  }

publicDnsNamespace :: { "Name" :: String } -> PublicDnsNamespace
publicDnsNamespace required =
  merge required
    { "Description" : Nothing
    }