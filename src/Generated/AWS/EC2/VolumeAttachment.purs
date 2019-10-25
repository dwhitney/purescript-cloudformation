module CloudFormation.AWS.EC2.VolumeAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Device" :: Value String
  , "InstanceId" :: Value String
  , "VolumeId" :: Value String
  }

derive instance newtypeVolumeAttachment :: Newtype VolumeAttachment _
derive newtype instance writeVolumeAttachment :: WriteForeign VolumeAttachment
instance resourceVolumeAttachment :: Resource VolumeAttachment where type_ _ = "AWS::EC2::VolumeAttachment"

volumeAttachment :: { "Device" :: Value String, "InstanceId" :: Value String, "VolumeId" :: Value String } -> VolumeAttachment
volumeAttachment required = VolumeAttachment
  required