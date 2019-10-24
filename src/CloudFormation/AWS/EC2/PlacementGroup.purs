module CloudFormation.AWS.EC2.PlacementGroup where 

import Data.Maybe (Maybe(..))


type PlacementGroup =
  { "Strategy" :: Maybe String
  }

placementGroup :: PlacementGroup
placementGroup =
  { "Strategy" : Nothing
  }