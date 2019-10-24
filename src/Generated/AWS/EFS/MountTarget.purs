module CloudFormation.AWS.EFS.MountTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype MountTarget = MountTarget
  { "FileSystemId" :: String
  , "SecurityGroups" :: Array String
  , "SubnetId" :: String
  , "IpAddress" :: Maybe String
  }

derive instance newtypeMountTarget :: Newtype MountTarget _
instance resourceMountTarget :: Resource MountTarget where type_ _ = "AWS::EFS::MountTarget"

mountTarget :: { "FileSystemId" :: String, "SecurityGroups" :: Array String, "SubnetId" :: String } -> MountTarget
mountTarget required = MountTarget
  (merge required
    { "IpAddress" : Nothing
    })