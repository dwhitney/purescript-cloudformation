module CloudFormation.AWS.ElasticLoadBalancingV2.Listener where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


type Listener =
  { "DefaultActions" :: Array Action
  , "LoadBalancerArn" :: String
  , "Port" :: Int
  , "Protocol" :: String
  , "Certificates" :: Maybe (Array Certificate)
  , "SslPolicy" :: Maybe String
  }

listener :: { "DefaultActions" :: Array Action, "LoadBalancerArn" :: String, "Port" :: Int, "Protocol" :: String } -> Listener
listener required =
  merge required
    { "Certificates" : Nothing
    , "SslPolicy" : Nothing
    }

type Certificate =
  { "CertificateArn" :: Maybe String
  }

certificate :: Certificate
certificate =
  { "CertificateArn" : Nothing
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