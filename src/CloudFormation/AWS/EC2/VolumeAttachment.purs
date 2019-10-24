module CloudFormation.AWS.EC2.VolumeAttachment where 




-- | `AWS::EC2::VolumeAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html-- |
-- | - `Device`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-device
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-instanceid
-- | - `VolumeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-volumeid
type VolumeAttachment =
  { "Device" :: String
  , "InstanceId" :: String
  , "VolumeId" :: String
  }

volumeAttachment :: { "Device" :: String, "InstanceId" :: String, "VolumeId" :: String } -> VolumeAttachment
volumeAttachment required =
  required