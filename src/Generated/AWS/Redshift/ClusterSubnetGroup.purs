module CloudFormation.AWS.Redshift.ClusterSubnetGroup where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeClusterSubnetGroup :: Newtype ClusterSubnetGroup _
derive newtype instance writeClusterSubnetGroup :: WriteForeign ClusterSubnetGroup
instance resourceClusterSubnetGroup :: Resource ClusterSubnetGroup where type_ _ = "AWS::Redshift::ClusterSubnetGroup"

clusterSubnetGroup :: { "Description" :: Value String, "SubnetIds" :: Value (Array String) } -> ClusterSubnetGroup
clusterSubnetGroup required = ClusterSubnetGroup
  (merge required
    { "Tags" : Nothing
    })