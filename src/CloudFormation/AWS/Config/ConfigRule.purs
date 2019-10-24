module CloudFormation.AWS.Config.ConfigRule where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type ConfigRule =
  { "Source" :: Source
  , "ConfigRuleName" :: Maybe String
  , "Description" :: Maybe String
  , "InputParameters" :: Maybe Foreign
  , "MaximumExecutionFrequency" :: Maybe String
  , "Scope" :: Maybe Scope
  }

configRule :: { "Source" :: Source } -> ConfigRule
configRule required =
  merge required
    { "ConfigRuleName" : Nothing
    , "Description" : Nothing
    , "InputParameters" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "Scope" : Nothing
    }

type SourceDetail =
  { "EventSource" :: String
  , "MessageType" :: String
  , "MaximumExecutionFrequency" :: Maybe String
  }

sourceDetail :: { "EventSource" :: String, "MessageType" :: String } -> SourceDetail
sourceDetail required =
  merge required
    { "MaximumExecutionFrequency" : Nothing
    }

type Source =
  { "Owner" :: String
  , "SourceIdentifier" :: String
  , "SourceDetails" :: Maybe (Array SourceDetail)
  }

source :: { "Owner" :: String, "SourceIdentifier" :: String } -> Source
source required =
  merge required
    { "SourceDetails" : Nothing
    }

type Scope =
  { "ComplianceResourceId" :: Maybe String
  , "ComplianceResourceTypes" :: Maybe (Array String)
  , "TagKey" :: Maybe String
  , "TagValue" :: Maybe String
  }

scope :: Scope
scope =
  { "ComplianceResourceId" : Nothing
  , "ComplianceResourceTypes" : Nothing
  , "TagKey" : Nothing
  , "TagValue" : Nothing
  }