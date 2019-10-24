module AWS.IAM.InstanceProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)


type InstanceProfile =
  { "Roles" :: Array String
  , "InstanceProfileName" :: Maybe String
  , "Path" :: Maybe String
  }

instanceProfile :: { "Roles" :: Array String } -> InstanceProfile
instanceProfile required =
  merge required
    { "InstanceProfileName" : Nothing
    , "Path" : Nothing
    }