module CloudFormation.AWS.OpsWorks.Volume where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Ec2VolumeId" :: Value String
  , "StackId" :: Value String
  , "MountPoint" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeVolume :: Newtype Volume _
derive newtype instance writeVolume :: WriteForeign Volume
instance resourceVolume :: Resource Volume where type_ _ = "AWS::OpsWorks::Volume"

volume :: { "Ec2VolumeId" :: Value String, "StackId" :: Value String } -> Volume
volume required = Volume
  (merge required
    { "MountPoint" : Nothing
    , "Name" : Nothing
    })