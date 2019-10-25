module CloudFormation.AWS.Redshift.ClusterSecurityGroupIngress where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Redshift::ClusterSecurityGroupIngress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html
-- |
-- | - `CIDRIP`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-cidrip
-- | - `ClusterSecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-clustersecuritygroupname
-- | - `EC2SecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-ec2securitygroupname
-- | - `EC2SecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html#cfn-redshift-clustersecuritygroupingress-ec2securitygroupownerid
newtype ClusterSecurityGroupIngress = ClusterSecurityGroupIngress
  { "ClusterSecurityGroupName" :: Value String
  , "CIDRIP" :: Maybe (Value String)
  , "EC2SecurityGroupName" :: Maybe (Value String)
  , "EC2SecurityGroupOwnerId" :: Maybe (Value String)
  }

derive instance newtypeClusterSecurityGroupIngress :: Newtype ClusterSecurityGroupIngress _
derive newtype instance writeClusterSecurityGroupIngress :: WriteForeign ClusterSecurityGroupIngress
instance resourceClusterSecurityGroupIngress :: Resource ClusterSecurityGroupIngress where type_ _ = "AWS::Redshift::ClusterSecurityGroupIngress"

clusterSecurityGroupIngress :: { "ClusterSecurityGroupName" :: Value String } -> ClusterSecurityGroupIngress
clusterSecurityGroupIngress required = ClusterSecurityGroupIngress
  (merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    })