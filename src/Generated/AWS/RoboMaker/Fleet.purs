module CloudFormation.AWS.RoboMaker.Fleet where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RoboMaker::Fleet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-name
newtype Fleet = Fleet
  { "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeFleet :: Newtype Fleet _
derive newtype instance writeFleet :: WriteForeign Fleet
instance resourceFleet :: Resource Fleet where type_ _ = "AWS::RoboMaker::Fleet"

fleet :: Fleet
fleet = Fleet
  { "Tags" : Nothing
  , "Name" : Nothing
  }