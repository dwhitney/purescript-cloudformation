module AWS.Lambda.LayerVersionPermission where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LayerVersionPermission =
  { "Action" :: String
  , "LayerVersionArn" :: String
  , "Principal" :: String
  , "OrganizationId" :: Maybe String
  }

layerVersionPermission :: { "Action" :: String, "LayerVersionArn" :: String, "Principal" :: String } -> LayerVersionPermission
layerVersionPermission required =
  merge required
    { "OrganizationId" : Nothing
    }