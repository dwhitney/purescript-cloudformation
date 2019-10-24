module AWS.Budgets.Budget where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


type Budget =
  { "Budget" :: BudgetData
  , "NotificationsWithSubscribers" :: Maybe (Array NotificationWithSubscribers)
  }

budget :: { "Budget" :: BudgetData } -> Budget
budget required =
  merge required
    { "NotificationsWithSubscribers" : Nothing
    }

type Spend =
  { "Amount" :: Number
  , "Unit" :: String
  }

spend :: { "Amount" :: Number, "Unit" :: String } -> Spend
spend required =
  required

type TimePeriod =
  { "Start" :: Maybe String
  , "End" :: Maybe String
  }

timePeriod :: TimePeriod
timePeriod =
  { "Start" : Nothing
  , "End" : Nothing
  }

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

type Subscriber =
  { "SubscriptionType" :: String
  , "Address" :: String
  }

subscriber :: { "SubscriptionType" :: String, "Address" :: String } -> Subscriber
subscriber required =
  required

type NotificationWithSubscribers =
  { "Subscribers" :: Array Subscriber
  , "Notification" :: Notification
  }

notificationWithSubscribers :: { "Subscribers" :: Array Subscriber, "Notification" :: Notification } -> NotificationWithSubscribers
notificationWithSubscribers required =
  required

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