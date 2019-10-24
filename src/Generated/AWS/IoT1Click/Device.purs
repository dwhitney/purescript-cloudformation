module CloudFormation.AWS.IoT1Click.Device where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoT1Click::Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html
-- |
-- | - `DeviceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-deviceid
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-enabled
newtype Device = Device
  { "DeviceId" :: String
  , "Enabled" :: Boolean
  }

derive instance newtypeDevice :: Newtype Device _
instance resourceDevice :: Resource Device where type_ _ = "AWS::IoT1Click::Device"

device :: { "DeviceId" :: String, "Enabled" :: Boolean } -> Device
device required = Device
  required