module CloudFormation.AWS.RoboMaker.Robot where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Architecture" :: Value String
  , "GreengrassGroupId" :: Value String
  , "Fleet" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeRobot :: Newtype Robot _
derive newtype instance writeRobot :: WriteForeign Robot
instance resourceRobot :: Resource Robot where type_ _ = "AWS::RoboMaker::Robot"

robot :: { "Architecture" :: Value String, "GreengrassGroupId" :: Value String } -> Robot
robot required = Robot
  (merge required
    { "Fleet" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })