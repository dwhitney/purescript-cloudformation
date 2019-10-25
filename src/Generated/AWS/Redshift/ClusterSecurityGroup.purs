module CloudFormation.AWS.Redshift.ClusterSecurityGroup where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Redshift::ClusterSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-description
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html#cfn-redshift-clustersecuritygroup-tags
newtype ClusterSecurityGroup = ClusterSecurityGroup
  { "Description" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeClusterSecurityGroup :: Newtype ClusterSecurityGroup _
derive newtype instance writeClusterSecurityGroup :: WriteForeign ClusterSecurityGroup
instance resourceClusterSecurityGroup :: Resource ClusterSecurityGroup where type_ _ = "AWS::Redshift::ClusterSecurityGroup"

clusterSecurityGroup :: { "Description" :: Value String } -> ClusterSecurityGroup
clusterSecurityGroup required = ClusterSecurityGroup
  (merge required
    { "Tags" : Nothing
    })