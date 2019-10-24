module CloudFormation.AWS.Greengrass.DeviceDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type DeviceDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe DeviceDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

deviceDefinition :: { "Name" :: String } -> DeviceDefinition
deviceDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

type DeviceDefinitionVersion =
  { "Devices" :: Array Device
  }

deviceDefinitionVersion :: { "Devices" :: Array Device } -> DeviceDefinitionVersion
deviceDefinitionVersion required =
  required

type Device =
  { "ThingArn" :: String
  , "Id" :: String
  , "CertificateArn" :: String
  , "SyncShadow" :: Maybe Boolean
  }

device :: { "ThingArn" :: String, "Id" :: String, "CertificateArn" :: String } -> Device
device required =
  merge required
    { "SyncShadow" : Nothing
    }