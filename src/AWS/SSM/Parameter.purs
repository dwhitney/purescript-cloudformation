module AWS.SSM.Parameter where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Parameter =
  { "Type" :: String
  , "Value" :: String
  , "Description" :: Maybe String
  , "Policies" :: Maybe String
  , "AllowedPattern" :: Maybe String
  , "Tier" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

parameter :: { "Type" :: String, "Value" :: String } -> Parameter
parameter required =
  merge required
    { "Description" : Nothing
    , "Policies" : Nothing
    , "AllowedPattern" : Nothing
    , "Tier" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }