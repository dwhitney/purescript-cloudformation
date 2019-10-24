module CloudFormation.AWS.ApiGateway.Model where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Model =
  { "RestApiId" :: String
  , "ContentType" :: Maybe String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  , "Schema" :: Maybe Foreign
  }

model :: { "RestApiId" :: String } -> Model
model required =
  merge required
    { "ContentType" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    , "Schema" : Nothing
    }