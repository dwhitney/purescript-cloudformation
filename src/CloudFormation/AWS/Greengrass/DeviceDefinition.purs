module CloudFormation.AWS.Greengrass.DeviceDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::Greengrass::DeviceDefinition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-name
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

-- | `AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html-- |
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html#cfn-greengrass-devicedefinition-devicedefinitionversion-devices
type DeviceDefinitionVersion =
  { "Devices" :: Array Device
  }

deviceDefinitionVersion :: { "Devices" :: Array Device } -> DeviceDefinitionVersion
deviceDefinitionVersion required =
  required

-- | `AWS::Greengrass::DeviceDefinition.Device`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-certificatearn
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