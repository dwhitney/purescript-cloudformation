module CloudFormation.AWS.Cognito.UserPoolClient where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolClient =
  { "UserPoolId" :: String
  , "AnalyticsConfiguration" :: Maybe AnalyticsConfiguration
  , "GenerateSecret" :: Maybe Boolean
  , "CallbackURLs" :: Maybe (Array String)
  , "AllowedOAuthScopes" :: Maybe (Array String)
  , "ReadAttributes" :: Maybe (Array String)
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe Boolean
  , "DefaultRedirectURI" :: Maybe String
  , "SupportedIdentityProviders" :: Maybe (Array String)
  , "ClientName" :: Maybe String
  , "AllowedOAuthFlows" :: Maybe (Array String)
  , "ExplicitAuthFlows" :: Maybe (Array String)
  , "LogoutURLs" :: Maybe (Array String)
  , "RefreshTokenValidity" :: Maybe Int
  , "WriteAttributes" :: Maybe (Array String)
  }

userPoolClient :: { "UserPoolId" :: String } -> UserPoolClient
userPoolClient required =
  merge required
    { "AnalyticsConfiguration" : Nothing
    , "GenerateSecret" : Nothing
    , "CallbackURLs" : Nothing
    , "AllowedOAuthScopes" : Nothing
    , "ReadAttributes" : Nothing
    , "AllowedOAuthFlowsUserPoolClient" : Nothing
    , "DefaultRedirectURI" : Nothing
    , "SupportedIdentityProviders" : Nothing
    , "ClientName" : Nothing
    , "AllowedOAuthFlows" : Nothing
    , "ExplicitAuthFlows" : Nothing
    , "LogoutURLs" : Nothing
    , "RefreshTokenValidity" : Nothing
    , "WriteAttributes" : Nothing
    }

type AnalyticsConfiguration =
  { "UserDataShared" :: Maybe Boolean
  , "ExternalId" :: Maybe String
  , "ApplicationId" :: Maybe String
  , "RoleArn" :: Maybe String
  }

analyticsConfiguration :: AnalyticsConfiguration
analyticsConfiguration =
  { "UserDataShared" : Nothing
  , "ExternalId" : Nothing
  , "ApplicationId" : Nothing
  , "RoleArn" : Nothing
  }