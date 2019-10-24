module CloudFormation.AWS.Redshift.ClusterSecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ClusterSecurityGroupName" :: String
  , "CIDRIP" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

derive instance newtypeClusterSecurityGroupIngress :: Newtype ClusterSecurityGroupIngress _
instance resourceClusterSecurityGroupIngress :: Resource ClusterSecurityGroupIngress where type_ _ = "AWS::Redshift::ClusterSecurityGroupIngress"

clusterSecurityGroupIngress :: { "ClusterSecurityGroupName" :: String } -> ClusterSecurityGroupIngress
clusterSecurityGroupIngress required = ClusterSecurityGroupIngress
  (merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    })