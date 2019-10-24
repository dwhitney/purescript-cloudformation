module AWS.ServiceCatalog.TagOption where 

import Data.Maybe (Maybe(..))
import Record (merge)


type TagOption =
  { "Value" :: String
  , "Key" :: String
  , "Active" :: Maybe Boolean
  }

tagOption :: { "Value" :: String, "Key" :: String } -> TagOption
tagOption required =
  merge required
    { "Active" : Nothing
    }