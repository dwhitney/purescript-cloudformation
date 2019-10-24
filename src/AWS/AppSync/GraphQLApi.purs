module AWS.AppSync.GraphQLApi where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Tag


type GraphQLApi =
  { "Name" :: String
  , "AuthenticationType" :: String
  , "OpenIDConnectConfig" :: Maybe OpenIDConnectConfig
  , "UserPoolConfig" :: Maybe UserPoolConfig
  , "Tags" :: Maybe Tags
  , "LogConfig" :: Maybe LogConfig
  , "AdditionalAuthenticationProviders" :: Maybe AdditionalAuthenticationProviders
  }

graphQLApi :: { "Name" :: String, "AuthenticationType" :: String } -> GraphQLApi
graphQLApi required =
  merge required
    { "OpenIDConnectConfig" : Nothing
    , "UserPoolConfig" : Nothing
    , "Tags" : Nothing
    , "LogConfig" : Nothing
    , "AdditionalAuthenticationProviders" : Nothing
    }

type AdditionalAuthenticationProvider =
  { "AuthenticationType" :: String
  , "OpenIDConnectConfig" :: Maybe OpenIDConnectConfig
  , "UserPoolConfig" :: Maybe CognitoUserPoolConfig
  }

additionalAuthenticationProvider :: { "AuthenticationType" :: String } -> AdditionalAuthenticationProvider
additionalAuthenticationProvider required =
  merge required
    { "OpenIDConnectConfig" : Nothing
    , "UserPoolConfig" : Nothing
    }

type AdditionalAuthenticationProviders = Array AdditionalAuthenticationProvider

type CognitoUserPoolConfig =
  { "AppIdClientRegex" :: Maybe String
  , "UserPoolId" :: Maybe String
  , "AwsRegion" :: Maybe String
  }

cognitoUserPoolConfig :: CognitoUserPoolConfig
cognitoUserPoolConfig =
  { "AppIdClientRegex" : Nothing
  , "UserPoolId" : Nothing
  , "AwsRegion" : Nothing
  }

type LogConfig =
  { "CloudWatchLogsRoleArn" :: Maybe String
  , "ExcludeVerboseContent" :: Maybe Boolean
  , "FieldLogLevel" :: Maybe String
  }

logConfig :: LogConfig
logConfig =
  { "CloudWatchLogsRoleArn" : Nothing
  , "ExcludeVerboseContent" : Nothing
  , "FieldLogLevel" : Nothing
  }

type OpenIDConnectConfig =
  { "Issuer" :: Maybe String
  , "ClientId" :: Maybe String
  , "AuthTTL" :: Maybe Number
  , "IatTTL" :: Maybe Number
  }

openIDConnectConfig :: OpenIDConnectConfig
openIDConnectConfig =
  { "Issuer" : Nothing
  , "ClientId" : Nothing
  , "AuthTTL" : Nothing
  , "IatTTL" : Nothing
  }

type UserPoolConfig =
  { "AppIdClientRegex" :: Maybe String
  , "UserPoolId" :: Maybe String
  , "AwsRegion" :: Maybe String
  , "DefaultAction" :: Maybe String
  }

userPoolConfig :: UserPoolConfig
userPoolConfig =
  { "AppIdClientRegex" : Nothing
  , "UserPoolId" : Nothing
  , "AwsRegion" : Nothing
  , "DefaultAction" : Nothing
  }

type Tags = Array Tag