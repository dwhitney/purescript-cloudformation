module AWS.Pinpoint.App where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type App =
  { "Name" :: String
  , "Tags" :: Maybe Foreign
  }

app :: { "Name" :: String } -> App
app required =
  merge required
    { "Tags" : Nothing
    }