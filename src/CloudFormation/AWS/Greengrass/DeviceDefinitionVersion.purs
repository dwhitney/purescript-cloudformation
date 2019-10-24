module CloudFormation.AWS.Greengrass.DeviceDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DeviceDefinitionVersion =
  { "DeviceDefinitionId" :: String
  , "Devices" :: Array Device
  }

deviceDefinitionVersion :: { "DeviceDefinitionId" :: String, "Devices" :: Array Device } -> DeviceDefinitionVersion
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