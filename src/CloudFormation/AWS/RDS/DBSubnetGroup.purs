module CloudFormation.AWS.RDS.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::RDS::DBSubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html-- |
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupdescription
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupname
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-tags
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