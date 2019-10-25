module CloudFormation.AWS.Events.EventBusPolicy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Events::EventBusPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html
-- |
-- | - `EventBusName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-eventbusname
-- | - `Condition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-condition
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-action
-- | - `StatementId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-statementid
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html#cfn-events-eventbuspolicy-principal
newtype EventBusPolicy = EventBusPolicy
  { "Action" :: Value String
  , "StatementId" :: Value String
  , "Principal" :: Value String
  , "EventBusName" :: Maybe (Value String)
  , "Condition" :: Maybe (Value Condition)
  }

derive instance newtypeEventBusPolicy :: Newtype EventBusPolicy _
derive newtype instance writeEventBusPolicy :: WriteForeign EventBusPolicy
instance resourceEventBusPolicy :: Resource EventBusPolicy where type_ _ = "AWS::Events::EventBusPolicy"

eventBusPolicy :: { "Action" :: Value String, "StatementId" :: Value String, "Principal" :: Value String } -> EventBusPolicy
eventBusPolicy required = EventBusPolicy
  (merge required
    { "EventBusName" : Nothing
    , "Condition" : Nothing
    })

-- | `AWS::Events::EventBusPolicy.Condition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-key
type Condition =
  { "Type" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  }

condition :: Condition
condition =
  { "Type" : Nothing
  , "Value" : Nothing
  , "Key" : Nothing
  }