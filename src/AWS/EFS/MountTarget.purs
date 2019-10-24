module AWS.EFS.MountTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)


type MountTarget =
  { "FileSystemId" :: String
  , "SecurityGroups" :: Array String
  , "SubnetId" :: String
  , "IpAddress" :: Maybe String
  }

mountTarget :: { "FileSystemId" :: String, "SecurityGroups" :: Array String, "SubnetId" :: String } -> MountTarget
mountTarget required =
  merge required
    { "IpAddress" : Nothing
    }