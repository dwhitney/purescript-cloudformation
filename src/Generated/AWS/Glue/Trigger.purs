module CloudFormation.AWS.Glue.Trigger where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
type Trigger =
  { "Type" :: String
  , "Actions" :: Array Action
  , "StartOnCreation" :: Maybe Boolean
  , "Description" :: Maybe String
  , "WorkflowName" :: Maybe String
  , "Schedule" :: Maybe String
  , "Tags" :: Maybe Json
  , "Name" :: Maybe String
  , "Predicate" :: Maybe Predicate
  }

trigger :: { "Type" :: String, "Actions" :: Array Action } -> Trigger
trigger required =
  merge required
    { "StartOnCreation" : Nothing
    , "Description" : Nothing
    , "WorkflowName" : Nothing
    , "Schedule" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    , "Predicate" : Nothing
    }

-- | `AWS::Glue::Trigger.NotificationProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html
-- |
-- | - `NotifyDelayAfter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-notificationproperty.html#cfn-glue-trigger-notificationproperty-notifydelayafter
type NotificationProperty =
  { "NotifyDelayAfter" :: Maybe Int
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
  { "NotificationProperty" :: Maybe NotificationProperty
  , "CrawlerName" :: Maybe String
  , "Timeout" :: Maybe Int
  , "JobName" :: Maybe String
  , "Arguments" :: Maybe Json
  , "SecurityConfiguration" :: Maybe String
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
  { "Logical" :: Maybe String
  , "Conditions" :: Maybe (Array Condition)
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
  { "CrawlerName" :: Maybe String
  , "State" :: Maybe String
  , "CrawlState" :: Maybe String
  , "LogicalOperator" :: Maybe String
  , "JobName" :: Maybe String
  }

condition :: Condition
condition =
  { "CrawlerName" : Nothing
  , "State" : Nothing
  , "CrawlState" : Nothing
  , "LogicalOperator" : Nothing
  , "JobName" : Nothing
  }