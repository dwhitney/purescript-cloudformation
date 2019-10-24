module CloudFormation.AWS.RoboMaker.SimulationApplication where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RoboMaker::SimulationApplication`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html
-- |
-- | - `RenderingEngine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-renderingengine
-- | - `SimulationSoftwareSuite`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-currentrevisionid
-- | - `RobotSoftwareSuite`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-robotsoftwaresuite
-- | - `Sources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-sources
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplication.html#cfn-robomaker-simulationapplication-name
newtype SimulationApplication = SimulationApplication
  { "RenderingEngine" :: RenderingEngine
  , "SimulationSoftwareSuite" :: SimulationSoftwareSuite
  , "RobotSoftwareSuite" :: RobotSoftwareSuite
  , "Sources" :: Array SourceConfig
  , "CurrentRevisionId" :: Maybe String
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeSimulationApplication :: Newtype SimulationApplication _
instance resourceSimulationApplication :: Resource SimulationApplication where type_ _ = "AWS::RoboMaker::SimulationApplication"

simulationApplication :: { "RenderingEngine" :: RenderingEngine, "SimulationSoftwareSuite" :: SimulationSoftwareSuite, "RobotSoftwareSuite" :: RobotSoftwareSuite, "Sources" :: Array SourceConfig } -> SimulationApplication
simulationApplication required = SimulationApplication
  (merge required
    { "CurrentRevisionId" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::RoboMaker::SimulationApplication.SourceConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html
-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3bucket
-- | - `Architecture`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-architecture
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3key
type SourceConfig =
  { "S3Bucket" :: String
  , "Architecture" :: String
  , "S3Key" :: String
  }

sourceConfig :: { "S3Bucket" :: String, "Architecture" :: String, "S3Key" :: String } -> SourceConfig
sourceConfig required =
  required

-- | `AWS::RoboMaker::SimulationApplication.RobotSoftwareSuite`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-version
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-name
type RobotSoftwareSuite =
  { "Version" :: String
  , "Name" :: String
  }

robotSoftwareSuite :: { "Version" :: String, "Name" :: String } -> RobotSoftwareSuite
robotSoftwareSuite required =
  required

-- | `AWS::RoboMaker::SimulationApplication.SimulationSoftwareSuite`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-version
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-name
type SimulationSoftwareSuite =
  { "Version" :: String
  , "Name" :: String
  }

simulationSoftwareSuite :: { "Version" :: String, "Name" :: String } -> SimulationSoftwareSuite
simulationSoftwareSuite required =
  required

-- | `AWS::RoboMaker::SimulationApplication.RenderingEngine`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-version
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-name
type RenderingEngine =
  { "Version" :: String
  , "Name" :: String
  }

renderingEngine :: { "Version" :: String, "Name" :: String } -> RenderingEngine
renderingEngine required =
  required