module CloudFormation.AWS.IoT1Click.Device where 




-- | `AWS::IoT1Click::Device`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html-- |
-- | - `DeviceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-deviceid
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-enabled
type Device =
  { "DeviceId" :: String
  , "Enabled" :: Boolean
  }

device :: { "DeviceId" :: String, "Enabled" :: Boolean } -> Device
device required =
  required