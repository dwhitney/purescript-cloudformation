module CloudFormation.AWS.DMS.ReplicationSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::DMS::ReplicationSubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html-- |
-- | - `ReplicationSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupdescription
-- | - `ReplicationSubnetGroupIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupidentifier
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-tags
type ReplicationSubnetGroup =
  { "ReplicationSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "ReplicationSubnetGroupIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

replicationSubnetGroup :: { "ReplicationSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> ReplicationSubnetGroup
replicationSubnetGroup required =
  merge required
    { "ReplicationSubnetGroupIdentifier" : Nothing
    , "Tags" : Nothing
    }