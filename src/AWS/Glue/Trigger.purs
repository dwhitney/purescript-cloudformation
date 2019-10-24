module AWS.Glue.Trigger where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Trigger =
  { "Type" :: String
  , "Actions" :: Array Action
  , "StartOnCreation" :: Maybe Boolean
  , "Description" :: Maybe String
  , "WorkflowName" :: Maybe String
  , "Schedule" :: Maybe String
  , "Tags" :: Maybe Foreign
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

type NotificationProperty =
  { "NotifyDelayAfter" :: Maybe Int
  }

notificationProperty :: NotificationProperty
notificationProperty =
  { "NotifyDelayAfter" : Nothing
  }

type Action =
  { "NotificationProperty" :: Maybe NotificationProperty
  , "CrawlerName" :: Maybe String
  , "Timeout" :: Maybe Int
  , "JobName" :: Maybe String
  , "Arguments" :: Maybe Foreign
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

type Predicate =
  { "Logical" :: Maybe String
  , "Conditions" :: Maybe (Array Condition)
  }

predicate :: Predicate
predicate =
  { "Logical" : Nothing
  , "Conditions" : Nothing
  }

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