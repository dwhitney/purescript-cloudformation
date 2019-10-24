module CloudFormation.AWS.StepFunctions.StateMachine where 

import Data.Maybe (Maybe(..))
import Record (merge)


type StateMachine =
  { "DefinitionString" :: String
  , "RoleArn" :: String
  , "StateMachineName" :: Maybe String
  , "Tags" :: Maybe (Array TagsEntry)
  }

stateMachine :: { "DefinitionString" :: String, "RoleArn" :: String } -> StateMachine
stateMachine required =
  merge required
    { "StateMachineName" : Nothing
    , "Tags" : Nothing
    }

type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required