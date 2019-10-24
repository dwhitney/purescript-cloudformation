module CloudFormation.AWS.Greengrass.CoreDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type CoreDefinitionVersion =
  { "Cores" :: Array Core
  , "CoreDefinitionId" :: String
  }

coreDefinitionVersion :: { "Cores" :: Array Core, "CoreDefinitionId" :: String } -> CoreDefinitionVersion
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