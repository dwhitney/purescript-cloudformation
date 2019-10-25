module CloudFormation.AWS.Greengrass.DeviceDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::DeviceDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-name
newtype DeviceDefinition = DeviceDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value DeviceDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeDeviceDefinition :: Newtype DeviceDefinition _
derive newtype instance writeDeviceDefinition :: WriteForeign DeviceDefinition
instance resourceDeviceDefinition :: Resource DeviceDefinition where type_ _ = "AWS::Greengrass::DeviceDefinition"

deviceDefinition :: { "Name" :: Value String } -> DeviceDefinition
deviceDefinition required = DeviceDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html
-- |
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html#cfn-greengrass-devicedefinition-devicedefinitionversion-devices
type DeviceDefinitionVersion =
  { "Devices" :: Value (Array Device)
  }

deviceDefinitionVersion :: { "Devices" :: Value (Array Device) } -> DeviceDefinitionVersion
deviceDefinitionVersion required =
  required

-- | `AWS::Greengrass::DeviceDefinition.Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html
-- |
-- | - `SyncShadow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-syncshadow
-- | - `ThingArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-thingarn
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-id
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-certificatearn
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