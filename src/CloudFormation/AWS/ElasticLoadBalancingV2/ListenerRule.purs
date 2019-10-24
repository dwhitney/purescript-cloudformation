module CloudFormation.AWS.ElasticLoadBalancingV2.ListenerRule where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


type ListenerRule =
  { "Actions" :: Array Action
  , "Conditions" :: Array RuleCondition
  , "ListenerArn" :: String
  , "Priority" :: Int
  }

listenerRule :: { "Actions" :: Array Action, "Conditions" :: Array RuleCondition, "ListenerArn" :: String, "Priority" :: Int } -> ListenerRule
listenerRule required =
  required

type HostHeaderConfig =
  { "Values" :: Maybe (Array String)
  }

hostHeaderConfig :: HostHeaderConfig
hostHeaderConfig =
  { "Values" : Nothing
  }

type RedirectConfig =
  { "StatusCode" :: String
  , "Host" :: Maybe String
  , "Path" :: Maybe String
  , "Port" :: Maybe String
  , "Protocol" :: Maybe String
  , "Query" :: Maybe String
  }

redirectConfig :: { "StatusCode" :: String } -> RedirectConfig
redirectConfig required =
  merge required
    { "Host" : Nothing
    , "Path" : Nothing
    , "Port" : Nothing
    , "Protocol" : Nothing
    , "Query" : Nothing
    }

type RuleCondition =
  { "Field" :: Maybe String
  , "HostHeaderConfig" :: Maybe HostHeaderConfig
  , "HttpHeaderConfig" :: Maybe HttpHeaderConfig
  , "HttpRequestMethodConfig" :: Maybe HttpRequestMethodConfig
  , "PathPatternConfig" :: Maybe PathPatternConfig
  , "QueryStringConfig" :: Maybe QueryStringConfig
  , "SourceIpConfig" :: Maybe SourceIpConfig
  , "Values" :: Maybe (Array String)
  }

ruleCondition :: RuleCondition
ruleCondition =
  { "Field" : Nothing
  , "HostHeaderConfig" : Nothing
  , "HttpHeaderConfig" : Nothing
  , "HttpRequestMethodConfig" : Nothing
  , "PathPatternConfig" : Nothing
  , "QueryStringConfig" : Nothing
  , "SourceIpConfig" : Nothing
  , "Values" : Nothing
  }

type HttpRequestMethodConfig =
  { "Values" :: Maybe (Array String)
  }

httpRequestMethodConfig :: HttpRequestMethodConfig
httpRequestMethodConfig =
  { "Values" : Nothing
  }

type HttpHeaderConfig =
  { "HttpHeaderName" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

httpHeaderConfig :: HttpHeaderConfig
httpHeaderConfig =
  { "HttpHeaderName" : Nothing
  , "Values" : Nothing
  }

type PathPatternConfig =
  { "Values" :: Maybe (Array String)
  }

pathPatternConfig :: PathPatternConfig
pathPatternConfig =
  { "Values" : Nothing
  }

type QueryStringConfig =
  { "Values" :: Maybe (Array QueryStringKeyValue)
  }

queryStringConfig :: QueryStringConfig
queryStringConfig =
  { "Values" : Nothing
  }

type Action =
  { "Type" :: String
  , "AuthenticateCognitoConfig" :: Maybe AuthenticateCognitoConfig
  , "AuthenticateOidcConfig" :: Maybe AuthenticateOidcConfig
  , "FixedResponseConfig" :: Maybe FixedResponseConfig
  , "Order" :: Maybe Int
  , "RedirectConfig" :: Maybe RedirectConfig
  , "TargetGroupArn" :: Maybe String
  }

action :: { "Type" :: String } -> Action
action required =
  merge required
    { "AuthenticateCognitoConfig" : Nothing
    , "AuthenticateOidcConfig" : Nothing
    , "FixedResponseConfig" : Nothing
    , "Order" : Nothing
    , "RedirectConfig" : Nothing
    , "TargetGroupArn" : Nothing
    }

type QueryStringKeyValue =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

queryStringKeyValue :: QueryStringKeyValue
queryStringKeyValue =
  { "Key" : Nothing
  , "Value" : Nothing
  }

type FixedResponseConfig =
  { "StatusCode" :: String
  , "ContentType" :: Maybe String
  , "MessageBody" :: Maybe String
  }

fixedResponseConfig :: { "StatusCode" :: String } -> FixedResponseConfig
fixedResponseConfig required =
  merge required
    { "ContentType" : Nothing
    , "MessageBody" : Nothing
    }

type AuthenticateCognitoConfig =
  { "UserPoolArn" :: String
  , "UserPoolClientId" :: String
  , "UserPoolDomain" :: String
  , "AuthenticationRequestExtraParams" :: Maybe (Object String)
  , "OnUnauthenticatedRequest" :: Maybe String
  , "Scope" :: Maybe String
  , "SessionCookieName" :: Maybe String
  , "SessionTimeout" :: Maybe Number
  }

authenticateCognitoConfig :: { "UserPoolArn" :: String, "UserPoolClientId" :: String, "UserPoolDomain" :: String } -> AuthenticateCognitoConfig
authenticateCognitoConfig required =
  merge required
    { "AuthenticationRequestExtraParams" : Nothing
    , "OnUnauthenticatedRequest" : Nothing
    , "Scope" : Nothing
    , "SessionCookieName" : Nothing
    , "SessionTimeout" : Nothing
    }

type AuthenticateOidcConfig =
  { "AuthorizationEndpoint" :: String
  , "ClientId" :: String
  , "ClientSecret" :: String
  , "Issuer" :: String
  , "TokenEndpoint" :: String
  , "UserInfoEndpoint" :: String
  , "AuthenticationRequestExtraParams" :: Maybe (Object String)
  , "OnUnauthenticatedRequest" :: Maybe String
  , "Scope" :: Maybe String
  , "SessionCookieName" :: Maybe String
  , "SessionTimeout" :: Maybe Number
  }

authenticateOidcConfig :: { "AuthorizationEndpoint" :: String, "ClientId" :: String, "ClientSecret" :: String, "Issuer" :: String, "TokenEndpoint" :: String, "UserInfoEndpoint" :: String } -> AuthenticateOidcConfig
authenticateOidcConfig required =
  merge required
    { "AuthenticationRequestExtraParams" : Nothing
    , "OnUnauthenticatedRequest" : Nothing
    , "Scope" : Nothing
    , "SessionCookieName" : Nothing
    , "SessionTimeout" : Nothing
    }

type SourceIpConfig =
  { "Values" :: Maybe (Array String)
  }

sourceIpConfig :: SourceIpConfig
sourceIpConfig =
  { "Values" : Nothing
  }