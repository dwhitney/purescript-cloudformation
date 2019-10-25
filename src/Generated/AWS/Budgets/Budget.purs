module CloudFormation.AWS.Budgets.Budget where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::Budgets::Budget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html
-- |
-- | - `NotificationsWithSubscribers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-notificationswithsubscribers
-- | - `Budget`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-budget
newtype Budget = Budget
  { "Budget" :: Value BudgetData
  , "NotificationsWithSubscribers" :: Maybe (Value (Array NotificationWithSubscribers))
  }

derive instance newtypeBudget :: Newtype Budget _
derive newtype instance writeBudget :: WriteForeign Budget
instance resourceBudget :: Resource Budget where type_ _ = "AWS::Budgets::Budget"

budget :: { "Budget" :: Value BudgetData } -> Budget
budget required = Budget
  (merge required
    { "NotificationsWithSubscribers" : Nothing
    })

-- | `AWS::Budgets::Budget.Spend`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html
-- |
-- | - `Amount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-amount
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-unit
type Spend =
  { "Amount" :: Value Number
  , "Unit" :: Value String
  }

spend :: { "Amount" :: Value Number, "Unit" :: Value String } -> Spend
spend required =
  required

-- | `AWS::Budgets::Budget.TimePeriod`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html
-- |
-- | - `Start`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-start
-- | - `End`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-timeperiod.html#cfn-budgets-budget-timeperiod-end
type TimePeriod =
  { "Start" :: Maybe (Value String)
  , "End" :: Maybe (Value String)
  }

timePeriod :: TimePeriod
timePeriod =
  { "Start" : Nothing
  , "End" : Nothing
  }

-- | `AWS::Budgets::Budget.Notification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html
-- |
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-comparisonoperator
-- | - `NotificationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-notificationtype
-- | - `Threshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-threshold
-- | - `ThresholdType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notification.html#cfn-budgets-budget-notification-thresholdtype
type Notification =
  { "ComparisonOperator" :: Value String
  , "NotificationType" :: Value String
  , "Threshold" :: Value Number
  , "ThresholdType" :: Maybe (Value String)
  }

notification :: { "ComparisonOperator" :: Value String, "NotificationType" :: Value String, "Threshold" :: Value Number } -> Notification
notification required =
  (merge required
    { "ThresholdType" : Nothing
    })

-- | `AWS::Budgets::Budget.Subscriber`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html
-- |
-- | - `SubscriptionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-subscriptiontype
-- | - `Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-address
type Subscriber =
  { "SubscriptionType" :: Value String
  , "Address" :: Value String
  }

subscriber :: { "SubscriptionType" :: Value String, "Address" :: Value String } -> Subscriber
subscriber required =
  required

-- | `AWS::Budgets::Budget.NotificationWithSubscribers`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html
-- |
-- | - `Subscribers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-subscribers
-- | - `Notification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-notification
type NotificationWithSubscribers =
  { "Subscribers" :: Value (Array Subscriber)
  , "Notification" :: Value Notification
  }

notificationWithSubscribers :: { "Subscribers" :: Value (Array Subscriber), "Notification" :: Value Notification } -> NotificationWithSubscribers
notificationWithSubscribers required =
  required

-- | `AWS::Budgets::Budget.CostTypes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html
-- |
-- | - `IncludeSupport`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport
-- | - `IncludeOtherSubscription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription
-- | - `IncludeTax`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax
-- | - `IncludeSubscription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription
-- | - `UseBlended`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended
-- | - `IncludeUpfront`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront
-- | - `IncludeDiscount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount
-- | - `IncludeCredit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit
-- | - `IncludeRecurring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring
-- | - `UseAmortized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized
-- | - `IncludeRefund`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerefund
type CostTypes =
  { "IncludeSupport" :: Maybe (Value Boolean)
  , "IncludeOtherSubscription" :: Maybe (Value Boolean)
  , "IncludeTax" :: Maybe (Value Boolean)
  , "IncludeSubscription" :: Maybe (Value Boolean)
  , "UseBlended" :: Maybe (Value Boolean)
  , "IncludeUpfront" :: Maybe (Value Boolean)
  , "IncludeDiscount" :: Maybe (Value Boolean)
  , "IncludeCredit" :: Maybe (Value Boolean)
  , "IncludeRecurring" :: Maybe (Value Boolean)
  , "UseAmortized" :: Maybe (Value Boolean)
  , "IncludeRefund" :: Maybe (Value Boolean)
  }

costTypes :: CostTypes
costTypes =
  { "IncludeSupport" : Nothing
  , "IncludeOtherSubscription" : Nothing
  , "IncludeTax" : Nothing
  , "IncludeSubscription" : Nothing
  , "UseBlended" : Nothing
  , "IncludeUpfront" : Nothing
  , "IncludeDiscount" : Nothing
  , "IncludeCredit" : Nothing
  , "IncludeRecurring" : Nothing
  , "UseAmortized" : Nothing
  , "IncludeRefund" : Nothing
  }

-- | `AWS::Budgets::Budget.BudgetData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html
-- |
-- | - `BudgetLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit
-- | - `TimePeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod
-- | - `TimeUnit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit
-- | - `PlannedBudgetLimits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-plannedbudgetlimits
-- | - `CostFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costfilters
-- | - `BudgetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname
-- | - `CostTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes
-- | - `BudgetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype
type BudgetData =
  { "TimeUnit" :: Value String
  , "BudgetType" :: Value String
  , "BudgetLimit" :: Maybe (Value Spend)
  , "TimePeriod" :: Maybe (Value TimePeriod)
  , "PlannedBudgetLimits" :: Maybe (Value CF.Json)
  , "CostFilters" :: Maybe (Value CF.Json)
  , "BudgetName" :: Maybe (Value String)
  , "CostTypes" :: Maybe (Value CostTypes)
  }

budgetData :: { "TimeUnit" :: Value String, "BudgetType" :: Value String } -> BudgetData
budgetData required =
  (merge required
    { "BudgetLimit" : Nothing
    , "TimePeriod" : Nothing
    , "PlannedBudgetLimits" : Nothing
    , "CostFilters" : Nothing
    , "BudgetName" : Nothing
    , "CostTypes" : Nothing
    })