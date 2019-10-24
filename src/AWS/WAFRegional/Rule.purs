module AWS.WAFRegional.Rule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Rule =
  { "MetricName" :: String
  , "Name" :: String
  , "Predicates" :: Maybe (Array Predicate)
  }

rule :: { "MetricName" :: String, "Name" :: String } -> Rule
rule required =
  merge required
    { "Predicates" : Nothing
    }

type Predicate =
  { "Type" :: String
  , "DataId" :: String
  , "Negated" :: Boolean
  }

predicate :: { "Type" :: String, "DataId" :: String, "Negated" :: Boolean } -> Predicate
predicate required =
  required