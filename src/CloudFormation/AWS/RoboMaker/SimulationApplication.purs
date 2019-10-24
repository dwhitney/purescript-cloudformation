module CloudFormation.AWS.RoboMaker.SimulationApplication where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type SimulationApplication =
  { "RenderingEngine" :: RenderingEngine
  , "SimulationSoftwareSuite" :: SimulationSoftwareSuite
  , "RobotSoftwareSuite" :: RobotSoftwareSuite
  , "Sources" :: Array SourceConfig
  , "CurrentRevisionId" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

simulationApplication :: { "RenderingEngine" :: RenderingEngine, "SimulationSoftwareSuite" :: SimulationSoftwareSuite, "RobotSoftwareSuite" :: RobotSoftwareSuite, "Sources" :: Array SourceConfig } -> SimulationApplication
simulationApplication required =
  merge required
    { "CurrentRevisionId" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }

type SourceConfig =
  { "S3Bucket" :: String
  , "Architecture" :: String
  , "S3Key" :: String
  }

sourceConfig :: { "S3Bucket" :: String, "Architecture" :: String, "S3Key" :: String } -> SourceConfig
sourceConfig required =
  required

type RobotSoftwareSuite =
  { "Version" :: String
  , "Name" :: String
  }

robotSoftwareSuite :: { "Version" :: String, "Name" :: String } -> RobotSoftwareSuite
robotSoftwareSuite required =
  required

type SimulationSoftwareSuite =
  { "Version" :: String
  , "Name" :: String
  }

simulationSoftwareSuite :: { "Version" :: String, "Name" :: String } -> SimulationSoftwareSuite
simulationSoftwareSuite required =
  required

type RenderingEngine =
  { "Version" :: String
  , "Name" :: String
  }

renderingEngine :: { "Version" :: String, "Name" :: String } -> RenderingEngine
renderingEngine required =
  required