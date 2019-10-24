module AWS.Glue.Database where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type Database =
  { "DatabaseInput" :: DatabaseInput
  , "CatalogId" :: String
  }

database :: { "DatabaseInput" :: DatabaseInput, "CatalogId" :: String } -> Database
database required =
  required

type DatabaseInput =
  { "LocationUri" :: Maybe String
  , "Description" :: Maybe String
  , "Parameters" :: Maybe Foreign
  , "Name" :: Maybe String
  }

databaseInput :: DatabaseInput
databaseInput =
  { "LocationUri" : Nothing
  , "Description" : Nothing
  , "Parameters" : Nothing
  , "Name" : Nothing
  }