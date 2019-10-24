module CloudFormation.AWS.IoTEvents.Input where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


type Input =
  { "InputDefinition" :: Maybe InputDefinition
  , "InputName" :: Maybe String
  , "InputDescription" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

input :: Input
input =
  { "InputDefinition" : Nothing
  , "InputName" : Nothing
  , "InputDescription" : Nothing
  , "Tags" : Nothing
  }

type InputDefinition =
  { "Attributes" :: Maybe (Array Attribute)
  }

inputDefinition :: InputDefinition
inputDefinition =
  { "Attributes" : Nothing
  }

type Attribute =
  { "JsonPath" :: Maybe String
  }

attribute :: Attribute
attribute =
  { "JsonPath" : Nothing
  }