module AWS.Greengrass.CoreDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type CoreDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe CoreDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

coreDefinition :: { "Name" :: String } -> CoreDefinition
coreDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

type CoreDefinitionVersion =
  { "Cores" :: Array Core
  }

coreDefinitionVersion :: { "Cores" :: Array Core } -> CoreDefinitionVersion
coreDefinitionVersion required =
  required

type Core =
  { "ThingArn" :: String
  , "Id" :: String
  , "CertificateArn" :: String
  , "SyncShadow" :: Maybe Boolean
  }

core :: { "ThingArn" :: String, "Id" :: String, "CertificateArn" :: String } -> Core
core required =
  merge required
    { "SyncShadow" : Nothing
    }