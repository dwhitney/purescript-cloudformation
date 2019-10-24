module CloudFormation.AWS.IoT1Click.Placement where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype Placement = Placement
  { "ProjectName" :: String
  , "PlacementName" :: Maybe String
  , "AssociatedDevices" :: Maybe CF.Json
  , "Attributes" :: Maybe CF.Json
  }

derive instance newtypePlacement :: Newtype Placement _
instance resourcePlacement :: Resource Placement where type_ _ = "AWS::IoT1Click::Placement"

placement :: { "ProjectName" :: String } -> Placement
placement required = Placement
  (merge required
    { "PlacementName" : Nothing
    , "AssociatedDevices" : Nothing
    , "Attributes" : Nothing
    })