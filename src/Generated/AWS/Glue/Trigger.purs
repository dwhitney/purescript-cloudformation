module CloudFormation.AWS.Glue.Trigger where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Glue::Trigger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-type
-- | - `StartOnCreation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-startoncreation
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-description
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-actions
-- | - `WorkflowName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-workflowname
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-schedule
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-name
-- | - `Predicate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-predicate
newtype Trigger = Trigger
  { "Type" :: Value String
  , "Actions" :: Value (Array Action)
  , "StartOnCreation" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "WorkflowName" :: Maybe (Value String)
  , "Schedule" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  , "Predicate" :: Maybe (Value Predicate)
  }

derive instance newtypeTrigger :: Newtype Trigger _
derive newtype instance writeTrigger :: WriteForeign Trigger
instance resourceTrigger :: Resource Trigger where type_ _ = "AWS::Glue::Trigger"

trigger :: { "Type" :: Value String, "Actions" :: Value (Array Action) } -> Trigger
trigger required = Trigger
  (merge required
    { "StartOnCreation" : Nothing
    , "Description" : Nothing
    , "WorkflowName" : Nothing
    , "Schedule" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    , "Predicate" : Nothing
    })

-- | `AWS::Glue::Trigger.NotificationProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html
-- |
-- | - `NotifyDelayAfter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html#cfn-glue-trigger-notificationproperty-notifydelayafter
type NotificationProperty =
  { "NotifyDelayAfter" :: Maybe (Value Int)
  }

notificationProperty :: NotificationProperty
notificationProperty =
  { "NotifyDelayAfter" : Nothing
  }

-- | `AWS::Glue::Trigger.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html
-- |
-- | - `NotificationProperty`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-notificationproperty
-- | - `CrawlerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-crawlername
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-timeout
-- | - `JobName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-jobname
-- | - `Arguments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-arguments
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-securityconfiguration
type Action =
  { "NotificationProperty" :: Maybe (Value NotificationProperty)
  , "CrawlerName" :: Maybe (Value String)
  , "Timeout" :: Maybe (Value Int)
  , "JobName" :: Maybe (Value String)
  , "Arguments" :: Maybe (Value CF.Json)
  , "SecurityConfiguration" :: Maybe (Value String)
  }

action :: Action
action =
  { "NotificationProperty" : Nothing
  , "CrawlerName" : Nothing
  , "Timeout" : Nothing
  , "JobName" : Nothing
  , "Arguments" : Nothing
  , "SecurityConfiguration" : Nothing
  }

-- | `AWS::Glue::Trigger.Predicate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html
-- |
-- | - `Logical`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-logical
-- | - `Conditions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-conditions
type Predicate =
  { "Logical" :: Maybe (Value String)
  , "Conditions" :: Maybe (Value (Array Condition))
  }

predicate :: Predicate
predicate =
  { "Logical" : Nothing
  , "Conditions" : Nothing
  }

-- | `AWS::Glue::Trigger.Condition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html
-- |
-- | - `CrawlerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-crawlername
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-state
-- | - `CrawlState`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-crawlstate
-- | - `LogicalOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-logicaloperator
-- | - `JobName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-condition.html#cfn-glue-trigger-condition-jobname
type Condition =
  { "CrawlerName" :: Maybe (Value String)
  , "State" :: Maybe (Value String)
  , "CrawlState" :: Maybe (Value String)
  , "LogicalOperator" :: Maybe (Value String)
  , "JobName" :: Maybe (Value String)
  }

condition :: Condition
condition =
  { "CrawlerName" : Nothing
  , "State" : Nothing
  , "CrawlState" : Nothing
  , "LogicalOperator" : Nothing
  , "JobName" : Nothing
  }