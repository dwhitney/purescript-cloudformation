module AWS.ApiGateway.ApiKey where 

import Data.Maybe (Maybe(..))


type ApiKey =
  { "CustomerId" :: Maybe String
  , "Description" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "GenerateDistinctId" :: Maybe Boolean
  , "Name" :: Maybe String
  , "StageKeys" :: Maybe (Array StageKey)
  , "Value" :: Maybe String
  }

apiKey :: ApiKey
apiKey =
  { "CustomerId" : Nothing
  , "Description" : Nothing
  , "Enabled" : Nothing
  , "GenerateDistinctId" : Nothing
  , "Name" : Nothing
  , "StageKeys" : Nothing
  , "Value" : Nothing
  }

type StageKey =
  { "RestApiId" :: Maybe String
  , "StageName" :: Maybe String
  }

stageKey :: StageKey
stageKey =
  { "RestApiId" : Nothing
  , "StageName" : Nothing
  }