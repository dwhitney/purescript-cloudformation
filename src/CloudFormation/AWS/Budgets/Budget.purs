module CloudFormation.AWS.Budgets.Budget where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::Budgets::Budget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html
-- |
-- | - `NotificationsWithSubscribers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-notificationswithsubscribers
-- | - `Budget`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budget.html#cfn-budgets-budget-budget
type Budget =
  { "Budget" :: BudgetData
  , "NotificationsWithSubscribers" :: Maybe (Array NotificationWithSubscribers)
  }

budget :: { "Budget" :: BudgetData } -> Budget
budget required =
  merge required
    { "NotificationsWithSubscribers" : Nothing
    }

-- | `AWS::Budgets::Budget.Spend`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html
-- |
-- | - `Amount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-amount
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-spend.html#cfn-budgets-budget-spend-unit
type Spend =
  { "Amount" :: Number
  , "Unit" :: String
  }

spend :: { "Amount" :: Number, "Unit" :: String } -> Spend
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
  { "Start" :: Maybe String
  , "End" :: Maybe String
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
  { "ComparisonOperator" :: String
  , "NotificationType" :: String
  , "Threshold" :: Number
  , "ThresholdType" :: Maybe String
  }

notification :: { "ComparisonOperator" :: String, "NotificationType" :: String, "Threshold" :: Number } -> Notification
notification required =
  merge required
    { "ThresholdType" : Nothing
    }

-- | `AWS::Budgets::Budget.Subscriber`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html
-- |
-- | - `SubscriptionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-subscriptiontype
-- | - `Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-address
type Subscriber =
  { "SubscriptionType" :: String
  , "Address" :: String
  }

subscriber :: { "SubscriptionType" :: String, "Address" :: String } -> Subscriber
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
  { "Subscribers" :: Array Subscriber
  , "Notification" :: Notification
  }

notificationWithSubscribers :: { "Subscribers" :: Array Subscriber, "Notification" :: Notification } -> NotificationWithSubscribers
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
  { "IncludeSupport" :: Maybe Boolean
  , "IncludeOtherSubscription" :: Maybe Boolean
  , "IncludeTax" :: Maybe Boolean
  , "IncludeSubscription" :: Maybe Boolean
  , "UseBlended" :: Maybe Boolean
  , "IncludeUpfront" :: Maybe Boolean
  , "IncludeDiscount" :: Maybe Boolean
  , "IncludeCredit" :: Maybe Boolean
  , "IncludeRecurring" :: Maybe Boolean
  , "UseAmortized" :: Maybe Boolean
  , "IncludeRefund" :: Maybe Boolean
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
  { "TimeUnit" :: String
  , "BudgetType" :: String
  , "BudgetLimit" :: Maybe Spend
  , "TimePeriod" :: Maybe TimePeriod
  , "PlannedBudgetLimits" :: Maybe Foreign
  , "CostFilters" :: Maybe Foreign
  , "BudgetName" :: Maybe String
  , "CostTypes" :: Maybe CostTypes
  }

budgetData :: { "TimeUnit" :: String, "BudgetType" :: String } -> BudgetData
budgetData required =
  merge required
    { "BudgetLimit" : Nothing
    , "TimePeriod" : Nothing
    , "PlannedBudgetLimits" : Nothing
    , "CostFilters" : Nothing
    , "BudgetName" : Nothing
    , "CostTypes" : Nothing
    }