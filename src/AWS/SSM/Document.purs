module AWS.SSM.Document where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Document =
  { "Content" :: Foreign
  , "DocumentType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

document :: { "Content" :: Foreign } -> Document
document required =
  merge required
    { "DocumentType" : Nothing
    , "Tags" : Nothing
    }