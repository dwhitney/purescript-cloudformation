module CloudFormation.AWS.Events.EventBusPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Events::EventBusPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-eventbuspolicy.html-- |
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
type EventBusPolicy =
  { "Action" :: String
  , "StatementId" :: String
  , "Principal" :: String
  , "EventBusName" :: Maybe String
  , "Condition" :: Maybe Condition
  }

eventBusPolicy :: { "Action" :: String, "StatementId" :: String, "Principal" :: String } -> EventBusPolicy
eventBusPolicy required =
  merge required
    { "EventBusName" : Nothing
    , "Condition" : Nothing
    }

-- | `AWS::Events::EventBusPolicy.Condition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-eventbuspolicy-condition.html#cfn-events-eventbuspolicy-condition-key
type Condition =
  { "Type" :: Maybe String
  , "Value" :: Maybe String
  , "Key" :: Maybe String
  }

condition :: Condition
condition =
  { "Type" : Nothing
  , "Value" : Nothing
  , "Key" : Nothing
  }