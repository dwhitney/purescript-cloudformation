module CloudFormation.AWS.Neptune.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::Neptune::DBSubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html-- |
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupname
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupdescription
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-tags
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