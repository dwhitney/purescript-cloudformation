module CloudFormation.AWS.Events.EventBus where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Events::EventBus`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html
-- |
-- | - `EventSourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-eventsourcename
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-name
newtype EventBus = EventBus
  { "Name" :: Value String
  , "EventSourceName" :: Maybe (Value String)
  }

derive instance newtypeEventBus :: Newtype EventBus _
derive newtype instance writeEventBus :: WriteForeign EventBus
instance resourceEventBus :: Resource EventBus where type_ _ = "AWS::Events::EventBus"

eventBus :: { "Name" :: Value String } -> EventBus
eventBus required = EventBus
  (merge required
    { "EventSourceName" : Nothing
    })