module CloudFormation.AWS.ServiceDiscovery.HttpNamespace where 

import Data.Maybe (Maybe(..))
import Record (merge)


type HttpNamespace =
  { "Name" :: String
  , "Description" :: Maybe String
  }

httpNamespace :: { "Name" :: String } -> HttpNamespace
httpNamespace required =
  merge required
    { "Description" : Nothing
    }