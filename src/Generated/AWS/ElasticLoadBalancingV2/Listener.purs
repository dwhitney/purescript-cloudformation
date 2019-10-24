module CloudFormation.AWS.ElasticLoadBalancingV2.Listener where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Foreign.Object (Object)


-- | `AWS::ElasticLoadBalancingV2::Listener`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html
-- |
-- | - `Certificates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-certificates
-- | - `DefaultActions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-defaultactions
-- | - `LoadBalancerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-loadbalancerarn
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-protocol
-- | - `SslPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-sslpolicy
newtype Listener = Listener
  { "DefaultActions" :: Array Action
  , "LoadBalancerArn" :: String
  , "Port" :: Int
  , "Protocol" :: String
  , "Certificates" :: Maybe (Array Certificate)
  , "SslPolicy" :: Maybe String
  }

derive instance newtypeListener :: Newtype Listener _
instance resourceListener :: Resource Listener where type_ _ = "AWS::ElasticLoadBalancingV2::Listener"

listener :: { "DefaultActions" :: Array Action, "LoadBalancerArn" :: String, "Port" :: Int, "Protocol" :: String } -> Listener
listener required = Listener
  (merge required
    { "Certificates" : Nothing
    , "SslPolicy" : Nothing
    })

-- | `AWS::ElasticLoadBalancingV2::Listener.Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html
-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
type Certificate =
  { "CertificateArn" :: Maybe String
  }

certificate :: Certificate
certificate =
  { "CertificateArn" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::Listener.FixedResponseConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html
-- |
-- | - `ContentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-contenttype
-- | - `MessageBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-messagebody
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-statuscode
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

-- | `AWS::ElasticLoadBalancingV2::Listener.RedirectConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html
-- |
-- | - `Host`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-host
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-path
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-protocol
-- | - `Query`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-query
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-statuscode
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

-- | `AWS::ElasticLoadBalancingV2::Listener.AuthenticateOidcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html
-- |
-- | - `AuthenticationRequestExtraParams`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-authenticationrequestextraparams
-- | - `AuthorizationEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-authorizationendpoint
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-clientid
-- | - `ClientSecret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-clientsecret
-- | - `Issuer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-issuer
-- | - `OnUnauthenticatedRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-onunauthenticatedrequest
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-scope
-- | - `SessionCookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-sessioncookiename
-- | - `SessionTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-sessiontimeout
-- | - `TokenEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-tokenendpoint
-- | - `UserInfoEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticateoidcconfig.html#cfn-elasticloadbalancingv2-listener-authenticateoidcconfig-userinfoendpoint
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

-- | `AWS::ElasticLoadBalancingV2::Listener.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html
-- |
-- | - `AuthenticateCognitoConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticatecognitoconfig
-- | - `AuthenticateOidcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticateoidcconfig
-- | - `FixedResponseConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-fixedresponseconfig
-- | - `Order`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-order
-- | - `RedirectConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-redirectconfig
-- | - `TargetGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-targetgrouparn
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-type
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

-- | `AWS::ElasticLoadBalancingV2::Listener.AuthenticateCognitoConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html
-- |
-- | - `AuthenticationRequestExtraParams`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-authenticationrequestextraparams
-- | - `OnUnauthenticatedRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-onunauthenticatedrequest
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-scope
-- | - `SessionCookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessioncookiename
-- | - `SessionTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-sessiontimeout
-- | - `UserPoolArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolarn
-- | - `UserPoolClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpoolclientid
-- | - `UserPoolDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-authenticatecognitoconfig.html#cfn-elasticloadbalancingv2-listener-authenticatecognitoconfig-userpooldomain
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