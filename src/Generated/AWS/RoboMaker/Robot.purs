module CloudFormation.AWS.RoboMaker.Robot where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RoboMaker::Robot`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html
-- |
-- | - `Fleet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-fleet
-- | - `Architecture`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-architecture
-- | - `GreengrassGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-greengrassgroupid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-name
newtype Robot = Robot
  { "Architecture" :: String
  , "GreengrassGroupId" :: String
  , "Fleet" :: Maybe String
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeRobot :: Newtype Robot _
instance resourceRobot :: Resource Robot where type_ _ = "AWS::RoboMaker::Robot"

robot :: { "Architecture" :: String, "GreengrassGroupId" :: String } -> Robot
robot required = Robot
  (merge required
    { "Fleet" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })