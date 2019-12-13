module CloudFormation.AWS.EKS.Nodegroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EKS::Nodegroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html
-- |
-- | - `ScalingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-scalingconfig
-- | - `Labels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-labels
-- | - `ReleaseVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-releaseversion
-- | - `NodegroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-nodegroupname
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-subnets
-- | - `NodeRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-noderole
-- | - `AmiType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-amitype
-- | - `ForceUpdateEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-forceupdateenabled
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-version
-- | - `RemoteAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-remoteaccess
-- | - `DiskSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-disksize
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-clustername
-- | - `InstanceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-instancetypes
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-tags
newtype Nodegroup = Nodegroup
  { "Subnets" :: Value (Array String)
  , "NodeRole" :: Value String
  , "ClusterName" :: Value String
  , "ScalingConfig" :: Maybe (Value ScalingConfig)
  , "Labels" :: Maybe (Value CF.Json)
  , "ReleaseVersion" :: Maybe (Value String)
  , "NodegroupName" :: Maybe (Value String)
  , "AmiType" :: Maybe (Value String)
  , "ForceUpdateEnabled" :: Maybe (Value Boolean)
  , "Version" :: Maybe (Value String)
  , "RemoteAccess" :: Maybe (Value RemoteAccess)
  , "DiskSize" :: Maybe (Value Number)
  , "InstanceTypes" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeNodegroup :: Newtype Nodegroup _
derive newtype instance writeNodegroup :: WriteForeign Nodegroup
instance resourceNodegroup :: Resource Nodegroup where type_ _ = "AWS::EKS::Nodegroup"

nodegroup :: { "Subnets" :: Value (Array String), "NodeRole" :: Value String, "ClusterName" :: Value String } -> Nodegroup
nodegroup required = Nodegroup
  (merge required
    { "ScalingConfig" : Nothing
    , "Labels" : Nothing
    , "ReleaseVersion" : Nothing
    , "NodegroupName" : Nothing
    , "AmiType" : Nothing
    , "ForceUpdateEnabled" : Nothing
    , "Version" : Nothing
    , "RemoteAccess" : Nothing
    , "DiskSize" : Nothing
    , "InstanceTypes" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::EKS::Nodegroup.RemoteAccess`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html
-- |
-- | - `SourceSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-sourcesecuritygroups
-- | - `Ec2SshKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-ec2sshkey
type RemoteAccess =
  { "Ec2SshKey" :: Value String
  , "SourceSecurityGroups" :: Maybe (Value (Array String))
  }

remoteAccess :: { "Ec2SshKey" :: Value String } -> RemoteAccess
remoteAccess required =
  (merge required
    { "SourceSecurityGroups" : Nothing
    })

-- | `AWS::EKS::Nodegroup.ScalingConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html
-- |
-- | - `MinSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-minsize
-- | - `DesiredSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-desiredsize
-- | - `MaxSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-scalingconfig.html#cfn-eks-nodegroup-scalingconfig-maxsize
type ScalingConfig =
  { "MinSize" :: Maybe (Value Number)
  , "DesiredSize" :: Maybe (Value Number)
  , "MaxSize" :: Maybe (Value Number)
  }

scalingConfig :: ScalingConfig
scalingConfig =
  { "MinSize" : Nothing
  , "DesiredSize" : Nothing
  , "MaxSize" : Nothing
  }