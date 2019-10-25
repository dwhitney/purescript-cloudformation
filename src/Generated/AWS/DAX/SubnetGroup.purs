module CloudFormation.AWS.DAX.SubnetGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "SubnetIds" :: Value (Array String)
  , "Description" :: Maybe (Value String)
  , "SubnetGroupName" :: Maybe (Value String)
  }

derive instance newtypeSubnetGroup :: Newtype SubnetGroup _
derive newtype instance writeSubnetGroup :: WriteForeign SubnetGroup
instance resourceSubnetGroup :: Resource SubnetGroup where type_ _ = "AWS::DAX::SubnetGroup"

subnetGroup :: { "SubnetIds" :: Value (Array String) } -> SubnetGroup
subnetGroup required = SubnetGroup
  (merge required
    { "Description" : Nothing
    , "SubnetGroupName" : Nothing
    })