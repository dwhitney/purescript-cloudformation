module CloudFormation.AWS.EC2.VolumeAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VolumeAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html
-- |
-- | - `Device`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-device
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-instanceid
-- | - `VolumeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-volumeid
newtype VolumeAttachment = VolumeAttachment
  { "Device" :: String
  , "InstanceId" :: String
  , "VolumeId" :: String
  }

derive instance newtypeVolumeAttachment :: Newtype VolumeAttachment _
instance resourceVolumeAttachment :: Resource VolumeAttachment where type_ _ = "AWS::EC2::VolumeAttachment"

volumeAttachment :: { "Device" :: String, "InstanceId" :: String, "VolumeId" :: String } -> VolumeAttachment
volumeAttachment required = VolumeAttachment
  required