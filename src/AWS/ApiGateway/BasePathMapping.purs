module AWS.ApiGateway.BasePathMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


type BasePathMapping =
  { "DomainName" :: String
  , "BasePath" :: Maybe String
  , "RestApiId" :: Maybe String
  , "Stage" :: Maybe String
  }

basePathMapping :: { "DomainName" :: String } -> BasePathMapping
basePathMapping required =
  merge required
    { "BasePath" : Nothing
    , "RestApiId" : Nothing
    , "Stage" : Nothing
    }