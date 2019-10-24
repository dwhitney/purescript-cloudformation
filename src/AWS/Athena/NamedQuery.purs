module AWS.Athena.NamedQuery where 

import Data.Maybe (Maybe(..))
import Record (merge)


type NamedQuery =
  { "QueryString" :: String
  , "Database" :: String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  }

namedQuery :: { "QueryString" :: String, "Database" :: String } -> NamedQuery
namedQuery required =
  merge required
    { "Description" : Nothing
    , "Name" : Nothing
    }