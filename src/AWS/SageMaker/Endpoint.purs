module AWS.SageMaker.Endpoint where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Endpoint =
  { "EndpointConfigName" :: String
  , "EndpointName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

endpoint :: { "EndpointConfigName" :: String } -> Endpoint
endpoint required =
  merge required
    { "EndpointName" : Nothing
    , "Tags" : Nothing
    }