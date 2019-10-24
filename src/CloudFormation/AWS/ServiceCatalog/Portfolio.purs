module CloudFormation.AWS.ServiceCatalog.Portfolio where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Portfolio =
  { "ProviderName" :: String
  , "DisplayName" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

portfolio :: { "ProviderName" :: String, "DisplayName" :: String } -> Portfolio
portfolio required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    , "Tags" : Nothing
    }