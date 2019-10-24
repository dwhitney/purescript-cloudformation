module CloudFormation.AWS.DAX.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DAX::SubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-description
-- | - `SubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetgroupname
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetids
newtype SubnetGroup = SubnetGroup
  { "SubnetIds" :: Array String
  , "Description" :: Maybe String
  , "SubnetGroupName" :: Maybe String
  }

derive instance newtypeSubnetGroup :: Newtype SubnetGroup _
instance resourceSubnetGroup :: Resource SubnetGroup where type_ _ = "AWS::DAX::SubnetGroup"

subnetGroup :: { "SubnetIds" :: Array String } -> SubnetGroup
subnetGroup required = SubnetGroup
  (merge required
    { "Description" : Nothing
    , "SubnetGroupName" : Nothing
    })