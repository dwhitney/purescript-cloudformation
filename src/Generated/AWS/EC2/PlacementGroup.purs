module CloudFormation.AWS.EC2.PlacementGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::PlacementGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html
-- |
-- | - `Strategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-placementgroup.html#cfn-ec2-placementgroup-strategy
newtype PlacementGroup = PlacementGroup
  { "Strategy" :: Maybe (Value String)
  }

derive instance newtypePlacementGroup :: Newtype PlacementGroup _
derive newtype instance writePlacementGroup :: WriteForeign PlacementGroup
instance resourcePlacementGroup :: Resource PlacementGroup where type_ _ = "AWS::EC2::PlacementGroup"

placementGroup :: PlacementGroup
placementGroup = PlacementGroup
  { "Strategy" : Nothing
  }