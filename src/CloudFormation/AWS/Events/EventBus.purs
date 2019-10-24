module CloudFormation.AWS.Events.EventBus where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Events::EventBus`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html-- |
-- | - `EventSourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-eventsourcename
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbus.html#cfn-events-eventbus-name
type EventBus =
  { "Name" :: String
  , "EventSourceName" :: Maybe String
  }

eventBus :: { "Name" :: String } -> EventBus
eventBus required =
  merge required
    { "EventSourceName" : Nothing
    }