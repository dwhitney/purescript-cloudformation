module CloudFormation.AWS.EFS.MountTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EFS::MountTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html
-- |
-- | - `FileSystemId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-filesystemid
-- | - `IpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-ipaddress
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-securitygroups
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-subnetid
type MountTarget =
  { "FileSystemId" :: String
  , "SecurityGroups" :: Array String
  , "SubnetId" :: String
  , "IpAddress" :: Maybe String
  }

mountTarget :: { "FileSystemId" :: String, "SecurityGroups" :: Array String, "SubnetId" :: String } -> MountTarget
mountTarget required =
  merge required
    { "IpAddress" : Nothing
    }