module CloudFormation.AWS.RoboMaker.RobotApplicationVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RoboMaker::RobotApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-currentrevisionid
-- | - `Application`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-application
newtype RobotApplicationVersion = RobotApplicationVersion
  { "Application" :: Value String
  , "CurrentRevisionId" :: Maybe (Value String)
  }

derive instance newtypeRobotApplicationVersion :: Newtype RobotApplicationVersion _
derive newtype instance writeRobotApplicationVersion :: WriteForeign RobotApplicationVersion
instance resourceRobotApplicationVersion :: Resource RobotApplicationVersion where type_ _ = "AWS::RoboMaker::RobotApplicationVersion"

robotApplicationVersion :: { "Application" :: Value String } -> RobotApplicationVersion
robotApplicationVersion required = RobotApplicationVersion
  (merge required
    { "CurrentRevisionId" : Nothing
    })