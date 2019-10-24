module CloudFormation.AWS.RoboMaker.SimulationApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::RoboMaker::SimulationApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-application
type SimulationApplicationVersion =
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

simulationApplicationVersion :: { "Application" :: String } -> SimulationApplicationVersion
simulationApplicationVersion required =
  merge required
    { "CurrentRevisionId" : Nothing
    }