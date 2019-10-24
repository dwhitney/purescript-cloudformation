module CloudFormation.AWS.RoboMaker.SimulationApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RoboMaker::SimulationApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-application
newtype SimulationApplicationVersion = SimulationApplicationVersion
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

derive instance newtypeSimulationApplicationVersion :: Newtype SimulationApplicationVersion _
instance resourceSimulationApplicationVersion :: Resource SimulationApplicationVersion where type_ _ = "AWS::RoboMaker::SimulationApplicationVersion"

simulationApplicationVersion :: { "Application" :: String } -> SimulationApplicationVersion
simulationApplicationVersion required = SimulationApplicationVersion
  (merge required
    { "CurrentRevisionId" : Nothing
    })