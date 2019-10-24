module CloudFormation.AWS.ElasticLoadBalancingV2.ListenerRule where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::ElasticLoadBalancingV2::ListenerRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-actions
-- | - `Conditions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-conditions
-- | - `ListenerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-listenerarn
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html#cfn-elasticloadbalancingv2-listenerrule-priority
newtype ListenerRule = ListenerRule
  { "Actions" :: Array Action
  , "Conditions" :: Array RuleCondition
  , "ListenerArn" :: String
  , "Priority" :: Int
  }

derive instance newtypeListenerRule :: Newtype ListenerRule _
instance resourceListenerRule :: Resource ListenerRule where type_ _ = "AWS::ElasticLoadBalancingV2::ListenerRule"

listenerRule :: { "Actions" :: Array Action, "Conditions" :: Array RuleCondition, "ListenerArn" :: String, "Priority" :: Int } -> ListenerRule
listenerRule required = ListenerRule
  required

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-values
type HostHeaderConfig =
  { "Values" :: Maybe (Array String)
  }

hostHeaderConfig :: HostHeaderConfig
hostHeaderConfig =
  { "Values" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.RedirectConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html
-- |
-- | - `Host`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-host
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-path
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-protocol
-- | - `Query`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-query
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-statuscode
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
  (merge required
    { "Host" : Nothing
    , "Path" : Nothing
    , "Port" : Nothing
    , "Protocol" : Nothing
    , "Query" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html
-- |
-- | - `Field`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
-- | - `HostHeaderConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig
-- | - `HttpHeaderConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig
-- | - `HttpRequestMethodConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig
-- | - `PathPatternConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig
-- | - `QueryStringConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig
-- | - `SourceIpConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
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

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.HttpRequestMethodConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html#cfn-elasticloadbalancingv2-listenerrule-httprequestmethodconfig-values
type HttpRequestMethodConfig =
  { "Values" :: Maybe (Array String)
  }

httpRequestMethodConfig :: HttpRequestMethodConfig
httpRequestMethodConfig =
  { "Values" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html
-- |
-- | - `HttpHeaderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-httpheadername
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-values
type HttpHeaderConfig =
  { "HttpHeaderName" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

httpHeaderConfig :: HttpHeaderConfig
httpHeaderConfig =
  { "HttpHeaderName" : Nothing
  , "Values" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.PathPatternConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html#cfn-elasticloadbalancingv2-listenerrule-pathpatternconfig-values
type PathPatternConfig =
  { "Values" :: Maybe (Array String)
  }

pathPatternConfig :: PathPatternConfig
pathPatternConfig =
  { "Values" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html#cfn-elasticloadbalancingv2-listenerrule-querystringconfig-values
type QueryStringConfig =
  { "Values" :: Maybe (Array QueryStringKeyValue)
  }

queryStringConfig :: QueryStringConfig
queryStringConfig =
  { "Values" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html
-- |
-- | - `AuthenticateCognitoConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticatecognitoconfig
-- | - `AuthenticateOidcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticateoidcconfig
-- | - `FixedResponseConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-fixedresponseconfig
-- | - `Order`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-order
-- | - `RedirectConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-redirectconfig
-- | - `TargetGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-targetgrouparn
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-type
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
  (merge required
    { "AuthenticateCognitoConfig" : Nothing
    , "AuthenticateOidcConfig" : Nothing
    , "FixedResponseConfig" : Nothing
    , "Order" : Nothing
    , "RedirectConfig" : Nothing
    , "TargetGroupArn" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringKeyValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-value
type QueryStringKeyValue =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

queryStringKeyValue :: QueryStringKeyValue
queryStringKeyValue =
  { "Key" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.FixedResponseConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html
-- |
-- | - `ContentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-contenttype
-- | - `MessageBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-messagebody
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-statuscode
type FixedResponseConfig =
  { "StatusCode" :: String
  , "ContentType" :: Maybe String
  , "MessageBody" :: Maybe String
  }

fixedResponseConfig :: { "StatusCode" :: String } -> FixedResponseConfig
fixedResponseConfig required =
  (merge required
    { "ContentType" : Nothing
    , "MessageBody" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.AuthenticateCognitoConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html
-- |
-- | - `AuthenticationRequestExtraParams`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-authenticationrequestextraparams
-- | - `OnUnauthenticatedRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-onunauthenticatedrequest
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-scope
-- | - `SessionCookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-sessioncookiename
-- | - `SessionTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-sessiontimeout
-- | - `UserPoolArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpoolarn
-- | - `UserPoolClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpoolclientid
-- | - `UserPoolDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticatecognitoconfig-userpooldomain
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
  (merge required
    { "AuthenticationRequestExtraParams" : Nothing
    , "OnUnauthenticatedRequest" : Nothing
    , "Scope" : Nothing
    , "SessionCookieName" : Nothing
    , "SessionTimeout" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.AuthenticateOidcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html
-- |
-- | - `AuthenticationRequestExtraParams`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-authenticationrequestextraparams
-- | - `AuthorizationEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-authorizationendpoint
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-clientid
-- | - `ClientSecret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-clientsecret
-- | - `Issuer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-issuer
-- | - `OnUnauthenticatedRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-onunauthenticatedrequest
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-scope
-- | - `SessionCookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-sessioncookiename
-- | - `SessionTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-sessiontimeout
-- | - `TokenEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-tokenendpoint
-- | - `UserInfoEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listenerrule-authenticateoidcconfig-userinfoendpoint
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
  (merge required
    { "AuthenticationRequestExtraParams" : Nothing
    , "OnUnauthenticatedRequest" : Nothing
    , "Scope" : Nothing
    , "SessionCookieName" : Nothing
    , "SessionTimeout" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.SourceIpConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html#cfn-elasticloadbalancingv2-listenerrule-sourceipconfig-values
type SourceIpConfig =
  { "Values" :: Maybe (Array String)
  }

sourceIpConfig :: SourceIpConfig
sourceIpConfig =
  { "Values" : Nothing
  }