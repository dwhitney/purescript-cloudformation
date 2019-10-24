module CloudFormation.AWS.DMS.ReplicationSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DMS::ReplicationSubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html
-- |
-- | - `ReplicationSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupdescription
-- | - `ReplicationSubnetGroupIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupidentifier
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-tags
newtype ReplicationSubnetGroup = ReplicationSubnetGroup
  { "ReplicationSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "ReplicationSubnetGroupIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeReplicationSubnetGroup :: Newtype ReplicationSubnetGroup _
instance resourceReplicationSubnetGroup :: Resource ReplicationSubnetGroup where type_ _ = "AWS::DMS::ReplicationSubnetGroup"

replicationSubnetGroup :: { "ReplicationSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> ReplicationSubnetGroup
replicationSubnetGroup required = ReplicationSubnetGroup
  (merge required
    { "ReplicationSubnetGroupIdentifier" : Nothing
    , "Tags" : Nothing
    })