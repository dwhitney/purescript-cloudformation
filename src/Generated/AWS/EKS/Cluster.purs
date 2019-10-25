module CloudFormation.AWS.EKS.Cluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EKS::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-version
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-rolearn
-- | - `ResourcesVpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-resourcesvpcconfig
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-name
newtype Cluster = Cluster
  { "RoleArn" :: Value String
  , "ResourcesVpcConfig" :: Value ResourcesVpcConfig
  , "Version" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeCluster :: Newtype Cluster _
derive newtype instance writeCluster :: WriteForeign Cluster
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::EKS::Cluster"

cluster :: { "RoleArn" :: Value String, "ResourcesVpcConfig" :: Value ResourcesVpcConfig } -> Cluster
cluster required = Cluster
  (merge required
    { "Version" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::EKS::Cluster.ResourcesVpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-subnetids
type ResourcesVpcConfig =
  { "SubnetIds" :: Value (Array String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  }

resourcesVpcConfig :: { "SubnetIds" :: Value (Array String) } -> ResourcesVpcConfig
resourcesVpcConfig required =
  (merge required
    { "SecurityGroupIds" : Nothing
    })