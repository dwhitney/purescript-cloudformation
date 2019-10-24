module AWS.EMR.SecurityConfiguration where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type SecurityConfiguration =
  { "SecurityConfiguration" :: Foreign
  , "Name" :: Maybe String
  }

securityConfiguration :: { "SecurityConfiguration" :: Foreign } -> SecurityConfiguration
securityConfiguration required =
  merge required
    { "Name" : Nothing
    }