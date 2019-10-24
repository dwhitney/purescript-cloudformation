module CloudFormation.AWS.RoboMaker.RobotApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::RoboMaker::RobotApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-application
type RobotApplicationVersion =
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

robotApplicationVersion :: { "Application" :: String } -> RobotApplicationVersion
robotApplicationVersion required =
  merge required
    { "CurrentRevisionId" : Nothing
    }