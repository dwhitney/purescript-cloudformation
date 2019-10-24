module CloudFormation.AWS.OpsWorks.Volume where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::OpsWorks::Volume`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html-- |
-- | - `Ec2VolumeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-ec2volumeid
-- | - `MountPoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-mountpoint
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-name
-- | - `StackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-stackid
type Volume =
  { "Ec2VolumeId" :: String
  , "StackId" :: String
  , "MountPoint" :: Maybe String
  , "Name" :: Maybe String
  }

volume :: { "Ec2VolumeId" :: String, "StackId" :: String } -> Volume
volume required =
  merge required
    { "MountPoint" : Nothing
    , "Name" : Nothing
    }