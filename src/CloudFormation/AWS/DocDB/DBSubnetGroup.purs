module CloudFormation.AWS.DocDB.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::DocDB::DBSubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html-- |
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupname
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupdescription
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-tags
type DBSubnetGroup =
  { "DBSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "DBSubnetGroupName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbsBSubnetGroup :: { "DBSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> DBSubnetGroup
dbsBSubnetGroup required =
  merge required
    { "DBSubnetGroupName" : Nothing
    , "Tags" : Nothing
    }