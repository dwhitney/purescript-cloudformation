module CloudFormation.AWS.IoT1Click.Device where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoT1Click::Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html
-- |
-- | - `DeviceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-deviceid
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-enabled
newtype Device = Device
  { "DeviceId" :: Value String
  , "Enabled" :: Value Boolean
  }

derive instance newtypeDevice :: Newtype Device _
derive newtype instance writeDevice :: WriteForeign Device
instance resourceDevice :: Resource Device where type_ _ = "AWS::IoT1Click::Device"

device :: { "DeviceId" :: Value String, "Enabled" :: Value Boolean } -> Device
device required = Device
  required