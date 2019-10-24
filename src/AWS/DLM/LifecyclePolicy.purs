module AWS.DLM.LifecyclePolicy where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type LifecyclePolicy =
  { "ExecutionRoleArn" :: Maybe String
  , "Description" :: Maybe String
  , "State" :: Maybe String
  , "PolicyDetails" :: Maybe PolicyDetails
  }

lifecyclePolicy :: LifecyclePolicy
lifecyclePolicy =
  { "ExecutionRoleArn" : Nothing
  , "Description" : Nothing
  , "State" : Nothing
  , "PolicyDetails" : Nothing
  }

type Parameters =
  { "ExcludeBootVolume" :: Maybe Boolean
  }

parameters :: Parameters
parameters =
  { "ExcludeBootVolume" : Nothing
  }

type PolicyDetails =
  { "ResourceTypes" :: Maybe (Array String)
  , "Schedules" :: Maybe (Array Schedule)
  , "PolicyType" :: Maybe String
  , "Parameters" :: Maybe Parameters
  , "TargetTags" :: Maybe (Array Tag)
  }

policyDetails :: PolicyDetails
policyDetails =
  { "ResourceTypes" : Nothing
  , "Schedules" : Nothing
  , "PolicyType" : Nothing
  , "Parameters" : Nothing
  , "TargetTags" : Nothing
  }

type RetainRule =
  { "Count" :: Int
  }

retainRule :: { "Count" :: Int } -> RetainRule
retainRule required =
  required

type CreateRule =
  { "IntervalUnit" :: String
  , "Interval" :: Int
  , "Times" :: Maybe (Array String)
  }

createRule :: { "IntervalUnit" :: String, "Interval" :: Int } -> CreateRule
createRule required =
  merge required
    { "Times" : Nothing
    }

type Schedule =
  { "TagsToAdd" :: Maybe (Array Tag)
  , "CreateRule" :: Maybe CreateRule
  , "VariableTags" :: Maybe (Array Tag)
  , "RetainRule" :: Maybe RetainRule
  , "Name" :: Maybe String
  , "CopyTags" :: Maybe Boolean
  }

schedule :: Schedule
schedule =
  { "TagsToAdd" : Nothing
  , "CreateRule" : Nothing
  , "VariableTags" : Nothing
  , "RetainRule" : Nothing
  , "Name" : Nothing
  , "CopyTags" : Nothing
  }