module CloudFormation.AWS.RoboMaker.SimulationApplicationVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RoboMaker::SimulationApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-application
newtype SimulationApplicationVersion = SimulationApplicationVersion
  { "Application" :: Value String
  , "CurrentRevisionId" :: Maybe (Value String)
  }

derive instance newtypeSimulationApplicationVersion :: Newtype SimulationApplicationVersion _
derive newtype instance writeSimulationApplicationVersion :: WriteForeign SimulationApplicationVersion
instance resourceSimulationApplicationVersion :: Resource SimulationApplicationVersion where type_ _ = "AWS::RoboMaker::SimulationApplicationVersion"

simulationApplicationVersion :: { "Application" :: Value String } -> SimulationApplicationVersion
simulationApplicationVersion required = SimulationApplicationVersion
  (merge required
    { "CurrentRevisionId" : Nothing
    })