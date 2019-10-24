module CloudFormation.AWS.Lambda.LayerVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LayerVersion =
  { "Content" :: Content
  , "CompatibleRuntimes" :: Maybe (Array String)
  , "LicenseInfo" :: Maybe String
  , "Description" :: Maybe String
  , "LayerName" :: Maybe String
  }

layerVersion :: { "Content" :: Content } -> LayerVersion
layerVersion required =
  merge required
    { "CompatibleRuntimes" : Nothing
    , "LicenseInfo" : Nothing
    , "Description" : Nothing
    , "LayerName" : Nothing
    }

type Content =
  { "S3Bucket" :: String
  , "S3Key" :: String
  , "S3ObjectVersion" :: Maybe String
  }

content :: { "S3Bucket" :: String, "S3Key" :: String } -> Content
content required =
  merge required
    { "S3ObjectVersion" : Nothing
    }