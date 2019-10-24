module CloudFormation.AWS.Events.EventBusPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Action" :: String
  , "StatementId" :: String
  , "Principal" :: String
  , "EventBusName" :: Maybe String
  , "Condition" :: Maybe Condition
  }

derive instance newtypeEventBusPolicy :: Newtype EventBusPolicy _
instance resourceEventBusPolicy :: Resource EventBusPolicy where type_ _ = "AWS::Events::EventBusPolicy"

eventBusPolicy :: { "Action" :: String, "StatementId" :: String, "Principal" :: String } -> EventBusPolicy
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