module CloudFormation.AWS.RoboMaker.Robot where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
type Robot =
  { "Architecture" :: String
  , "GreengrassGroupId" :: String
  , "Fleet" :: Maybe String
  , "Tags" :: Maybe Json
  , "Name" :: Maybe String
  }

robot :: { "Architecture" :: String, "GreengrassGroupId" :: String } -> Robot
robot required =
  merge required
    { "Fleet" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }