module CloudFormation.AWS.OpsWorks.Volume where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::OpsWorks::Volume`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html
-- |
-- | - `Ec2VolumeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-ec2volumeid
-- | - `MountPoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-mountpoint
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-name
-- | - `StackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-stackid
newtype Volume = Volume
  { "Ec2VolumeId" :: String
  , "StackId" :: String
  , "MountPoint" :: Maybe String
  , "Name" :: Maybe String
  }

derive instance newtypeVolume :: Newtype Volume _
instance resourceVolume :: Resource Volume where type_ _ = "AWS::OpsWorks::Volume"

volume :: { "Ec2VolumeId" :: String, "StackId" :: String } -> Volume
volume required = Volume
  (merge required
    { "MountPoint" : Nothing
    , "Name" : Nothing
    })