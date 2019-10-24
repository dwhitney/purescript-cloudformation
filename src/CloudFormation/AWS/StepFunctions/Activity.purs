module CloudFormation.AWS.StepFunctions.Activity where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Activity =
  { "Name" :: String
  , "Tags" :: Maybe (Array TagsEntry)
  }

activity :: { "Name" :: String } -> Activity
activity required =
  merge required
    { "Tags" : Nothing
    }

type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required