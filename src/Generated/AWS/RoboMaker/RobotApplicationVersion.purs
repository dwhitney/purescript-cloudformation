module CloudFormation.AWS.RoboMaker.RobotApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RoboMaker::RobotApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-application
newtype RobotApplicationVersion = RobotApplicationVersion
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

derive instance newtypeRobotApplicationVersion :: Newtype RobotApplicationVersion _
instance resourceRobotApplicationVersion :: Resource RobotApplicationVersion where type_ _ = "AWS::RoboMaker::RobotApplicationVersion"

robotApplicationVersion :: { "Application" :: String } -> RobotApplicationVersion
robotApplicationVersion required = RobotApplicationVersion
  (merge required
    { "CurrentRevisionId" : Nothing
    })