module CloudFormation.AWS.IoT1Click.Placement where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ProjectName" :: Value String
  , "PlacementName" :: Maybe (Value String)
  , "AssociatedDevices" :: Maybe (Value CF.Json)
  , "Attributes" :: Maybe (Value CF.Json)
  }

derive instance newtypePlacement :: Newtype Placement _
derive newtype instance writePlacement :: WriteForeign Placement
instance resourcePlacement :: Resource Placement where type_ _ = "AWS::IoT1Click::Placement"

placement :: { "ProjectName" :: Value String } -> Placement
placement required = Placement
  (merge required
    { "PlacementName" : Nothing
    , "AssociatedDevices" : Nothing
    , "Attributes" : Nothing
    })