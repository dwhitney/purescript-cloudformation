module AWS.Glue.Workflow where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type Workflow =
  { "Description" :: Maybe String
  , "DefaultRunProperties" :: Maybe Foreign
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

workflow :: Workflow
workflow =
  { "Description" : Nothing
  , "DefaultRunProperties" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }