module CloudFormation.AWS.RoboMaker.RobotApplication where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type RobotApplication =
  { "RobotSoftwareSuite" :: RobotSoftwareSuite
  , "Sources" :: Array SourceConfig
  , "CurrentRevisionId" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

robotApplication :: { "RobotSoftwareSuite" :: RobotSoftwareSuite, "Sources" :: Array SourceConfig } -> RobotApplication
robotApplication required =
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