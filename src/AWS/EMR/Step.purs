module AWS.EMR.Step where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Step =
  { "ActionOnFailure" :: String
  , "HadoopJarStep" :: HadoopJarStepConfig
  , "JobFlowId" :: String
  , "Name" :: String
  }

step :: { "ActionOnFailure" :: String, "HadoopJarStep" :: HadoopJarStepConfig, "JobFlowId" :: String, "Name" :: String } -> Step
step required =
  required

type KeyValue =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

keyValue :: KeyValue
keyValue =
  { "Key" : Nothing
  , "Value" : Nothing
  }

type HadoopJarStepConfig =
  { "Jar" :: String
  , "Args" :: Maybe (Array String)
  , "MainClass" :: Maybe String
  , "StepProperties" :: Maybe (Array KeyValue)
  }

hadoopJarStepConfig :: { "Jar" :: String } -> HadoopJarStepConfig
hadoopJarStepConfig required =
  merge required
    { "Args" : Nothing
    , "MainClass" : Nothing
    , "StepProperties" : Nothing
    }