module CloudFormation.AWS.WAFRegional.WebACL where 

import Data.Maybe (Maybe(..))
import Record (merge)


type WebACL =
  { "MetricName" :: String
  , "DefaultAction" :: Action
  , "Name" :: String
  , "Rules" :: Maybe (Array Rule)
  }

webACL :: { "MetricName" :: String, "DefaultAction" :: Action, "Name" :: String } -> WebACL
webACL required =
  merge required
    { "Rules" : Nothing
    }

type Rule =
  { "Action" :: Action
  , "Priority" :: Int
  , "RuleId" :: String
  }

rule :: { "Action" :: Action, "Priority" :: Int, "RuleId" :: String } -> Rule
rule required =
  required

type Action =
  { "Type" :: String
  }

action :: { "Type" :: String } -> Action
action required =
  required