module CloudFormation.AWS.Redshift.ClusterSecurityGroup where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Redshift::ClusterSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-description
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-tags
newtype ClusterSecurityGroup = ClusterSecurityGroup
  { "Description" :: String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeClusterSecurityGroup :: Newtype ClusterSecurityGroup _
instance resourceClusterSecurityGroup :: Resource ClusterSecurityGroup where type_ _ = "AWS::Redshift::ClusterSecurityGroup"

clusterSecurityGroup :: { "Description" :: String } -> ClusterSecurityGroup
clusterSecurityGroup required = ClusterSecurityGroup
  (merge required
    { "Tags" : Nothing
    })