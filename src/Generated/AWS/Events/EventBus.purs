module CloudFormation.AWS.Events.EventBus where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Events::EventBus`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html
-- |
-- | - `EventSourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-eventsourcename
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-name
newtype EventBus = EventBus
  { "Name" :: String
  , "EventSourceName" :: Maybe String
  }

derive instance newtypeEventBus :: Newtype EventBus _
instance resourceEventBus :: Resource EventBus where type_ _ = "AWS::Events::EventBus"

eventBus :: { "Name" :: String } -> EventBus
eventBus required = EventBus
  (merge required
    { "EventSourceName" : Nothing
    })