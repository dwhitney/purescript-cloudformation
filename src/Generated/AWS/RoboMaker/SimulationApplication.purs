module CloudFormation.AWS.RoboMaker.SimulationApplication where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "RenderingEngine" :: Value RenderingEngine
  , "SimulationSoftwareSuite" :: Value SimulationSoftwareSuite
  , "RobotSoftwareSuite" :: Value RobotSoftwareSuite
  , "Sources" :: Value (Array SourceConfig)
  , "CurrentRevisionId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeSimulationApplication :: Newtype SimulationApplication _
derive newtype instance writeSimulationApplication :: WriteForeign SimulationApplication
instance resourceSimulationApplication :: Resource SimulationApplication where type_ _ = "AWS::RoboMaker::SimulationApplication"

simulationApplication :: { "RenderingEngine" :: Value RenderingEngine, "SimulationSoftwareSuite" :: Value SimulationSoftwareSuite, "RobotSoftwareSuite" :: Value RobotSoftwareSuite, "Sources" :: Value (Array SourceConfig) } -> SimulationApplication
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
  { "S3Bucket" :: Value String
  , "Architecture" :: Value String
  , "S3Key" :: Value String
  }

sourceConfig :: { "S3Bucket" :: Value String, "Architecture" :: Value String, "S3Key" :: Value String } -> SourceConfig
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
  { "Version" :: Value String
  , "Name" :: Value String
  }

robotSoftwareSuite :: { "Version" :: Value String, "Name" :: Value String } -> RobotSoftwareSuite
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
  { "Version" :: Value String
  , "Name" :: Value String
  }

simulationSoftwareSuite :: { "Version" :: Value String, "Name" :: Value String } -> SimulationSoftwareSuite
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
  { "Version" :: Value String
  , "Name" :: Value String
  }

renderingEngine :: { "Version" :: Value String, "Name" :: Value String } -> RenderingEngine
renderingEngine required =
  required