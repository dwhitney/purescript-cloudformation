module CloudFormation.AWS.IoT1Click.Placement where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::IoT1Click::Placement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html
-- |
-- | - `PlacementName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-placementname
-- | - `ProjectName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-projectname
-- | - `AssociatedDevices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-associateddevices
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-placement.html#cfn-iot1click-placement-attributes
type Placement =
  { "ProjectName" :: String
  , "PlacementName" :: Maybe String
  , "AssociatedDevices" :: Maybe Json
  , "Attributes" :: Maybe Json
  }

placement :: { "ProjectName" :: String } -> Placement
placement required =
  merge required
    { "PlacementName" : Nothing
    , "AssociatedDevices" : Nothing
    , "Attributes" : Nothing
    }