module CloudFormation.AWS.EKS.Cluster where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EKS::Cluster`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-version
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-rolearn
-- | - `ResourcesVpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-resourcesvpcconfig
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-name
type Cluster =
  { "RoleArn" :: String
  , "ResourcesVpcConfig" :: ResourcesVpcConfig
  , "Version" :: Maybe String
  , "Name" :: Maybe String
  }

cluster :: { "RoleArn" :: String, "ResourcesVpcConfig" :: ResourcesVpcConfig } -> Cluster
cluster required =
  merge required
    { "Version" : Nothing
    , "Name" : Nothing
    }

-- | `AWS::EKS::Cluster.ResourcesVpcConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-subnetids
type ResourcesVpcConfig =
  { "SubnetIds" :: Array String
  , "SecurityGroupIds" :: Maybe (Array String)
  }

resourcesVpcConfig :: { "SubnetIds" :: Array String } -> ResourcesVpcConfig
resourcesVpcConfig required =
  merge required
    { "SecurityGroupIds" : Nothing
    }