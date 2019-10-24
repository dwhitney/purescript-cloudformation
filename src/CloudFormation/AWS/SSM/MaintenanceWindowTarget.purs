module CloudFormation.AWS.SSM.MaintenanceWindowTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)


type MaintenanceWindowTarget =
  { "WindowId" :: String
  , "ResourceType" :: String
  , "Targets" :: Array Targets
  , "OwnerInformation" :: Maybe String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  }

maintenanceWindowTarget :: { "WindowId" :: String, "ResourceType" :: String, "Targets" :: Array Targets } -> MaintenanceWindowTarget
maintenanceWindowTarget required =
  merge required
    { "OwnerInformation" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    }

type Targets =
  { "Key" :: String
  , "Values" :: Maybe (Array String)
  }

targets :: { "Key" :: String } -> Targets
targets required =
  merge required
    { "Values" : Nothing
    }