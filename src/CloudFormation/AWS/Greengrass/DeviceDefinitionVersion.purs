module CloudFormation.AWS.Greengrass.DeviceDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::DeviceDefinitionVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html-- |
-- | - `DeviceDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devicedefinitionid
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devices
type DeviceDefinitionVersion =
  { "DeviceDefinitionId" :: String
  , "Devices" :: Array Device
  }

deviceDefinitionVersion :: { "DeviceDefinitionId" :: String, "Devices" :: Array Device } -> DeviceDefinitionVersion
deviceDefinitionVersion required =
  required

-- | `AWS::Greengrass::DeviceDefinitionVersion.Device`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-certificatearn
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