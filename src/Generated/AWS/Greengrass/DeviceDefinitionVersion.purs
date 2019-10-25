module CloudFormation.AWS.Greengrass.DeviceDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::DeviceDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html
-- |
-- | - `DeviceDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devicedefinitionid
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devices
newtype DeviceDefinitionVersion = DeviceDefinitionVersion
  { "DeviceDefinitionId" :: Value String
  , "Devices" :: Value (Array Device)
  }

derive instance newtypeDeviceDefinitionVersion :: Newtype DeviceDefinitionVersion _
derive newtype instance writeDeviceDefinitionVersion :: WriteForeign DeviceDefinitionVersion
instance resourceDeviceDefinitionVersion :: Resource DeviceDefinitionVersion where type_ _ = "AWS::Greengrass::DeviceDefinitionVersion"

deviceDefinitionVersion :: { "DeviceDefinitionId" :: Value String, "Devices" :: Value (Array Device) } -> DeviceDefinitionVersion
deviceDefinitionVersion required = DeviceDefinitionVersion
  required

-- | `AWS::Greengrass::DeviceDefinitionVersion.Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html
-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-certificatearn
type Device =
  { "ThingArn" :: Value String
  , "Id" :: Value String
  , "CertificateArn" :: Value String
  , "SyncShadow" :: Maybe (Value Boolean)
  }

device :: { "ThingArn" :: Value String, "Id" :: Value String, "CertificateArn" :: Value String } -> Device
device required =
  (merge required
    { "SyncShadow" : Nothing
    })