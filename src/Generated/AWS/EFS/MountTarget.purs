module CloudFormation.AWS.EFS.MountTarget where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "FileSystemId" :: Value String
  , "SecurityGroups" :: Value (Array String)
  , "SubnetId" :: Value String
  , "IpAddress" :: Maybe (Value String)
  }

derive instance newtypeMountTarget :: Newtype MountTarget _
derive newtype instance writeMountTarget :: WriteForeign MountTarget
instance resourceMountTarget :: Resource MountTarget where type_ _ = "AWS::EFS::MountTarget"

mountTarget :: { "FileSystemId" :: Value String, "SecurityGroups" :: Value (Array String), "SubnetId" :: Value String } -> MountTarget
mountTarget required = MountTarget
  (merge required
    { "IpAddress" : Nothing
    })