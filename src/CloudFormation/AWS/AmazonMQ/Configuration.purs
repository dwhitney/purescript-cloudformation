module CloudFormation.AWS.AmazonMQ.Configuration where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Configuration =
  { "EngineVersion" :: String
  , "EngineType" :: String
  , "Data" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "Tags" :: Maybe (Array TagsEntry)
  }

configuration :: { "EngineVersion" :: String, "EngineType" :: String, "Data" :: String, "Name" :: String } -> Configuration
configuration required =
  merge required
    { "Description" : Nothing
    , "Tags" : Nothing
    }

type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required