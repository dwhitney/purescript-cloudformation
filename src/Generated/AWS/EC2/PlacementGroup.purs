module CloudFormation.AWS.EC2.PlacementGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::PlacementGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html
-- |
-- | - `Strategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy
newtype PlacementGroup = PlacementGroup
  { "Strategy" :: Maybe String
  }

derive instance newtypePlacementGroup :: Newtype PlacementGroup _
instance resourcePlacementGroup :: Resource PlacementGroup where type_ _ = "AWS::EC2::PlacementGroup"

placementGroup :: PlacementGroup
placementGroup = PlacementGroup
  { "Strategy" : Nothing
  }