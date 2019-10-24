module CloudFormation.AWS.Redshift.ClusterSecurityGroup where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Redshift::ClusterSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-description
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-tags
type ClusterSecurityGroup =
  { "Description" :: String
  , "Tags" :: Maybe (Array Tag)
  }

clusterSecurityGroup :: { "Description" :: String } -> ClusterSecurityGroup
clusterSecurityGroup required =
  merge required
    { "Tags" : Nothing
    }