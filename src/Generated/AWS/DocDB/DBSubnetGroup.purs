module CloudFormation.AWS.DocDB.DBSubnetGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DocDB::DBSubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html
-- |
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupname
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-dbsubnetgroupdescription
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbsubnetgroup.html#cfn-docdb-dbsubnetgroup-tags
newtype DBSubnetGroup = DBSubnetGroup
  { "DBSubnetGroupDescription" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "DBSubnetGroupName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDBSubnetGroup :: Newtype DBSubnetGroup _
derive newtype instance writeDBSubnetGroup :: WriteForeign DBSubnetGroup
instance resourceDBSubnetGroup :: Resource DBSubnetGroup where type_ _ = "AWS::DocDB::DBSubnetGroup"

dbsBSubnetGroup :: { "DBSubnetGroupDescription" :: Value String, "SubnetIds" :: Value (Array String) } -> DBSubnetGroup
dbsBSubnetGroup required = DBSubnetGroup
  (merge required
    { "DBSubnetGroupName" : Nothing
    , "Tags" : Nothing
    })