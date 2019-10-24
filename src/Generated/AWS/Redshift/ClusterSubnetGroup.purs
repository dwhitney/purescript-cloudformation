module CloudFormation.AWS.Redshift.ClusterSubnetGroup where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Redshift::ClusterSubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-description
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html#cfn-redshift-clustersubnetgroup-tags
newtype ClusterSubnetGroup = ClusterSubnetGroup
  { "Description" :: String
  , "SubnetIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeClusterSubnetGroup :: Newtype ClusterSubnetGroup _
instance resourceClusterSubnetGroup :: Resource ClusterSubnetGroup where type_ _ = "AWS::Redshift::ClusterSubnetGroup"

clusterSubnetGroup :: { "Description" :: String, "SubnetIds" :: Array String } -> ClusterSubnetGroup
clusterSubnetGroup required = ClusterSubnetGroup
  (merge required
    { "Tags" : Nothing
    })