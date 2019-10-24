module CloudFormation.AWS.Neptune.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Neptune::DBSubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html
-- |
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupname
-- | - `DBSubnetGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-dbsubnetgroupdescription
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbsubnetgroup.html#cfn-neptune-dbsubnetgroup-tags
newtype DBSubnetGroup = DBSubnetGroup
  { "DBSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "DBSubnetGroupName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDBSubnetGroup :: Newtype DBSubnetGroup _
instance resourceDBSubnetGroup :: Resource DBSubnetGroup where type_ _ = "AWS::Neptune::DBSubnetGroup"

dbsBSubnetGroup :: { "DBSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> DBSubnetGroup
dbsBSubnetGroup required = DBSubnetGroup
  (merge required
    { "DBSubnetGroupName" : Nothing
    , "Tags" : Nothing
    })