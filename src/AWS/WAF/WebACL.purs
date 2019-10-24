module AWS.WAF.WebACL where 

import Data.Maybe (Maybe(..))
import Record (merge)


type WebACL =
  { "DefaultAction" :: WafAction
  , "MetricName" :: String
  , "Name" :: String
  , "Rules" :: Maybe (Array ActivatedRule)
  }

webACL :: { "DefaultAction" :: WafAction, "MetricName" :: String, "Name" :: String } -> WebACL
webACL required =
  merge required
    { "Rules" : Nothing
    }

type ActivatedRule =
  { "Priority" :: Int
  , "RuleId" :: String
  , "Action" :: Maybe WafAction
  }

activatedRule :: { "Priority" :: Int, "RuleId" :: String } -> ActivatedRule
activatedRule required =
  merge required
    { "Action" : Nothing
    }

type WafAction =
  { "Type" :: String
  }

wafAction :: { "Type" :: String } -> WafAction
wafAction required =
  required