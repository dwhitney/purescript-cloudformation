module CloudFormation.AWS.RoboMaker.Fleet where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


-- | `AWS::RoboMaker::Fleet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-name
type Fleet =
  { "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

fleet :: Fleet
fleet =
  { "Tags" : Nothing
  , "Name" : Nothing
  }