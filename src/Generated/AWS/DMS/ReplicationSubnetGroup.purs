module CloudFormation.AWS.DMS.ReplicationSubnetGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ReplicationSubnetGroupDescription" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "ReplicationSubnetGroupIdentifier" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeReplicationSubnetGroup :: Newtype ReplicationSubnetGroup _
derive newtype instance writeReplicationSubnetGroup :: WriteForeign ReplicationSubnetGroup
instance resourceReplicationSubnetGroup :: Resource ReplicationSubnetGroup where type_ _ = "AWS::DMS::ReplicationSubnetGroup"

replicationSubnetGroup :: { "ReplicationSubnetGroupDescription" :: Value String, "SubnetIds" :: Value (Array String) } -> ReplicationSubnetGroup
replicationSubnetGroup required = ReplicationSubnetGroup
  (merge required
    { "ReplicationSubnetGroupIdentifier" : Nothing
    , "Tags" : Nothing
    })