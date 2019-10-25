module CloudFormation.AWS.ElasticLoadBalancingV2.ListenerRule where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "Actions" :: Value (Array Action)
  , "Conditions" :: Value (Array RuleCondition)
  , "ListenerArn" :: Value String
  , "Priority" :: Value Int
  }

derive instance newtypeListenerRule :: Newtype ListenerRule _
derive newtype instance writeListenerRule :: WriteForeign ListenerRule
instance resourceListenerRule :: Resource ListenerRule where type_ _ = "AWS::ElasticLoadBalancingV2::ListenerRule"

listenerRule :: { "Actions" :: Value (Array Action), "Conditions" :: Value (Array RuleCondition), "ListenerArn" :: Value String, "Priority" :: Value Int } -> ListenerRule
listenerRule required = ListenerRule
  required

-- | `AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-values
type HostHeaderConfig =
  { "Values" :: Maybe (Value (Array String))
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
  { "StatusCode" :: Value String
  , "Host" :: Maybe (Value String)
  , "Path" :: Maybe (Value String)
  , "Port" :: Maybe (Value String)
  , "Protocol" :: Maybe (Value String)
  , "Query" :: Maybe (Value String)
  }

redirectConfig :: { "StatusCode" :: Value String } -> RedirectConfig
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
  { "Field" :: Maybe (Value String)
  , "HostHeaderConfig" :: Maybe (Value HostHeaderConfig)
  , "HttpHeaderConfig" :: Maybe (Value HttpHeaderConfig)
  , "HttpRequestMethodConfig" :: Maybe (Value HttpRequestMethodConfig)
  , "PathPatternConfig" :: Maybe (Value PathPatternConfig)
  , "QueryStringConfig" :: Maybe (Value QueryStringConfig)
  , "SourceIpConfig" :: Maybe (Value SourceIpConfig)
  , "Values" :: Maybe (Value (Array String))
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
  { "Values" :: Maybe (Value (Array String))
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
  { "HttpHeaderName" :: Maybe (Value String)
  , "Values" :: Maybe (Value (Array String))
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
  { "Values" :: Maybe (Value (Array String))
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
  { "Values" :: Maybe (Value (Array QueryStringKeyValue))
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
  { "Type" :: Value String
  , "AuthenticateCognitoConfig" :: Maybe (Value AuthenticateCognitoConfig)
  , "AuthenticateOidcConfig" :: Maybe (Value AuthenticateOidcConfig)
  , "FixedResponseConfig" :: Maybe (Value FixedResponseConfig)
  , "Order" :: Maybe (Value Int)
  , "RedirectConfig" :: Maybe (Value RedirectConfig)
  , "TargetGroupArn" :: Maybe (Value String)
  }

action :: { "Type" :: Value String } -> Action
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
  { "Key" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
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
  { "StatusCode" :: Value String
  , "ContentType" :: Maybe (Value String)
  , "MessageBody" :: Maybe (Value String)
  }

fixedResponseConfig :: { "StatusCode" :: Value String } -> FixedResponseConfig
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
  { "UserPoolArn" :: Value String
  , "UserPoolClientId" :: Value String
  , "UserPoolDomain" :: Value String
  , "AuthenticationRequestExtraParams" :: Maybe (Value (Object String))
  , "OnUnauthenticatedRequest" :: Maybe (Value String)
  , "Scope" :: Maybe (Value String)
  , "SessionCookieName" :: Maybe (Value String)
  , "SessionTimeout" :: Maybe (Value Number)
  }

authenticateCognitoConfig :: { "UserPoolArn" :: Value String, "UserPoolClientId" :: Value String, "UserPoolDomain" :: Value String } -> AuthenticateCognitoConfig
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
  { "AuthorizationEndpoint" :: Value String
  , "ClientId" :: Value String
  , "ClientSecret" :: Value String
  , "Issuer" :: Value String
  , "TokenEndpoint" :: Value String
  , "UserInfoEndpoint" :: Value String
  , "AuthenticationRequestExtraParams" :: Maybe (Value (Object String))
  , "OnUnauthenticatedRequest" :: Maybe (Value String)
  , "Scope" :: Maybe (Value String)
  , "SessionCookieName" :: Maybe (Value String)
  , "SessionTimeout" :: Maybe (Value Number)
  }

authenticateOidcConfig :: { "AuthorizationEndpoint" :: Value String, "ClientId" :: Value String, "ClientSecret" :: Value String, "Issuer" :: Value String, "TokenEndpoint" :: Value String, "UserInfoEndpoint" :: Value String } -> AuthenticateOidcConfig
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
  { "Values" :: Maybe (Value (Array String))
  }

sourceIpConfig :: SourceIpConfig
sourceIpConfig =
  { "Values" : Nothing
  }