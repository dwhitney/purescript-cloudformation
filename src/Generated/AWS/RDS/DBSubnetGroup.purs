module CloudFormation.AWS.RDS.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RDS::DBSubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html
-- |
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupdescription
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-dbsubnetgroupname
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html#cfn-rds-dbsubnetgroup-tags
newtype DBSubnetGroup = DBSubnetGroup
  { "DBSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "DBSubnetGroupName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDBSubnetGroup :: Newtype DBSubnetGroup _
instance resourceDBSubnetGroup :: Resource DBSubnetGroup where type_ _ = "AWS::RDS::DBSubnetGroup"

dbsBSubnetGroup :: { "DBSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> DBSubnetGroup
dbsBSubnetGroup required = DBSubnetGroup
  (merge required
    { "DBSubnetGroupName" : Nothing
    , "Tags" : Nothing
    })