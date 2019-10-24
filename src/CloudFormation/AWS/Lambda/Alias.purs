module CloudFormation.AWS.Lambda.Alias where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Alias =
  { "FunctionName" :: String
  , "FunctionVersion" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "RoutingConfig" :: Maybe AliasRoutingConfiguration
  }

alias :: { "FunctionName" :: String, "FunctionVersion" :: String, "Name" :: String } -> Alias
alias required =
  merge required
    { "Description" : Nothing
    , "RoutingConfig" : Nothing
    }

type VersionWeight =
  { "FunctionVersion" :: String
  , "FunctionWeight" :: Number
  }

versionWeight :: { "FunctionVersion" :: String, "FunctionWeight" :: Number } -> VersionWeight
versionWeight required =
  required

type AliasRoutingConfiguration =
  { "AdditionalVersionWeights" :: Array VersionWeight
  }

aliasRoutingConfiguration :: { "AdditionalVersionWeights" :: Array VersionWeight } -> AliasRoutingConfiguration
aliasRoutingConfiguration required =
  required