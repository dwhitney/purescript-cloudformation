module CloudFormation.AWS.IoT1Click.Placement where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Placement =
  { "ProjectName" :: String
  , "PlacementName" :: Maybe String
  , "AssociatedDevices" :: Maybe Foreign
  , "Attributes" :: Maybe Foreign
  }

placement :: { "ProjectName" :: String } -> Placement
placement required =
  merge required
    { "PlacementName" : Nothing
    , "AssociatedDevices" : Nothing
    , "Attributes" : Nothing
    }