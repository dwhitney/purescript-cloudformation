module AWS.DAX.ParameterGroup where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


type ParameterGroup =
  { "ParameterNameValues" :: Maybe Foreign
  , "Description" :: Maybe String
  , "ParameterGroupName" :: Maybe String
  }

parameterGroup :: ParameterGroup
parameterGroup =
  { "ParameterNameValues" : Nothing
  , "Description" : Nothing
  , "ParameterGroupName" : Nothing
  }