module CloudFormation.AWS.IoT1Click.Project where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


type Project =
  { "PlacementTemplate" :: PlacementTemplate
  , "Description" :: Maybe String
  , "ProjectName" :: Maybe String
  }

project :: { "PlacementTemplate" :: PlacementTemplate } -> Project
project required =
  merge required
    { "Description" : Nothing
    , "ProjectName" : Nothing
    }

type PlacementTemplate =
  { "DeviceTemplates" :: Maybe Foreign
  , "DefaultAttributes" :: Maybe Foreign
  }

placementTemplate :: PlacementTemplate
placementTemplate =
  { "DeviceTemplates" : Nothing
  , "DefaultAttributes" : Nothing
  }

type DeviceTemplate =
  { "DeviceType" :: Maybe String
  , "CallbackOverrides" :: Maybe Foreign
  }

deviceTemplate :: DeviceTemplate
deviceTemplate =
  { "DeviceType" : Nothing
  , "CallbackOverrides" : Nothing
  }