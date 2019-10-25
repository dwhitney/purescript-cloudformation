module CloudFormation.AWS.EC2.Volume where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::Volume`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html
-- |
-- | - `AutoEnableIO`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-autoenableio
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-availabilityzone
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-iops
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-kmskeyid
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-size
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-snapshotid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-tags
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-volumetype
newtype Volume = Volume
  { "AvailabilityZone" :: Value String
  , "AutoEnableIO" :: Maybe (Value Boolean)
  , "Encrypted" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "KmsKeyId" :: Maybe (Value String)
  , "Size" :: Maybe (Value Int)
  , "SnapshotId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "VolumeType" :: Maybe (Value String)
  }

derive instance newtypeVolume :: Newtype Volume _
derive newtype instance writeVolume :: WriteForeign Volume
instance resourceVolume :: Resource Volume where type_ _ = "AWS::EC2::Volume"

volume :: { "AvailabilityZone" :: Value String } -> Volume
volume required = Volume
  (merge required
    { "AutoEnableIO" : Nothing
    , "Encrypted" : Nothing
    , "Iops" : Nothing
    , "KmsKeyId" : Nothing
    , "Size" : Nothing
    , "SnapshotId" : Nothing
    , "Tags" : Nothing
    , "VolumeType" : Nothing
    })