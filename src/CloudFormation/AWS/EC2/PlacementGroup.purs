module CloudFormation.AWS.EC2.PlacementGroup where 

import Data.Maybe (Maybe(..))


-- | `AWS::EC2::PlacementGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html-- |
-- | - `Strategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy
type PlacementGroup =
  { "Strategy" :: Maybe String
  }

placementGroup :: PlacementGroup
placementGroup =
  { "Strategy" : Nothing
  }