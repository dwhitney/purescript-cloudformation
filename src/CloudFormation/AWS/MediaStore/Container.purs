module CloudFormation.AWS.MediaStore.Container where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Container =
  { "ContainerName" :: String
  , "Policy" :: Maybe String
  , "CorsPolicy" :: Maybe (Array CorsRule)
  , "LifecyclePolicy" :: Maybe String
  , "AccessLoggingEnabled" :: Maybe Boolean
  }

container :: { "ContainerName" :: String } -> Container
container required =
  merge required
    { "Policy" : Nothing
    , "CorsPolicy" : Nothing
    , "LifecyclePolicy" : Nothing
    , "AccessLoggingEnabled" : Nothing
    }

type CorsRule =
  { "AllowedMethods" :: Maybe (Array String)
  , "AllowedOrigins" :: Maybe (Array String)
  , "ExposeHeaders" :: Maybe (Array String)
  , "MaxAgeSeconds" :: Maybe Int
  , "AllowedHeaders" :: Maybe (Array String)
  }

corsRule :: CorsRule
corsRule =
  { "AllowedMethods" : Nothing
  , "AllowedOrigins" : Nothing
  , "ExposeHeaders" : Nothing
  , "MaxAgeSeconds" : Nothing
  , "AllowedHeaders" : Nothing
  }