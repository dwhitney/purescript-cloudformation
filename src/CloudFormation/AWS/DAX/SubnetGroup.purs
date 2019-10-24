module CloudFormation.AWS.DAX.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::DAX::SubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-description
-- | - `SubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetgroupname
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-subnetgroup.html#cfn-dax-subnetgroup-subnetids
type SubnetGroup =
  { "SubnetIds" :: Array String
  , "Description" :: Maybe String
  , "SubnetGroupName" :: Maybe String
  }

subnetGroup :: { "SubnetIds" :: Array String } -> SubnetGroup
subnetGroup required =
  merge required
    { "Description" : Nothing
    , "SubnetGroupName" : Nothing
    }