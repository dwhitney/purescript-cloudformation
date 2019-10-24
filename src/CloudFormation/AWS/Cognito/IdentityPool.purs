module CloudFormation.AWS.Cognito.IdentityPool where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type IdentityPool =
  { "AllowUnauthenticatedIdentities" :: Boolean
  , "PushSync" :: Maybe PushSync
  , "CognitoIdentityProviders" :: Maybe (Array CognitoIdentityProvider)
  , "CognitoEvents" :: Maybe Foreign
  , "DeveloperProviderName" :: Maybe String
  , "CognitoStreams" :: Maybe CognitoStreams
  , "IdentityPoolName" :: Maybe String
  , "SupportedLoginProviders" :: Maybe Foreign
  , "SamlProviderARNs" :: Maybe (Array String)
  , "OpenIdConnectProviderARNs" :: Maybe (Array String)
  }

identityPool :: { "AllowUnauthenticatedIdentities" :: Boolean } -> IdentityPool
identityPool required =
  merge required
    { "PushSync" : Nothing
    , "CognitoIdentityProviders" : Nothing
    , "CognitoEvents" : Nothing
    , "DeveloperProviderName" : Nothing
    , "CognitoStreams" : Nothing
    , "IdentityPoolName" : Nothing
    , "SupportedLoginProviders" : Nothing
    , "SamlProviderARNs" : Nothing
    , "OpenIdConnectProviderARNs" : Nothing
    }

type CognitoIdentityProvider =
  { "ServerSideTokenCheck" :: Maybe Boolean
  , "ProviderName" :: Maybe String
  , "ClientId" :: Maybe String
  }

cognitoIdentityProvider :: CognitoIdentityProvider
cognitoIdentityProvider =
  { "ServerSideTokenCheck" : Nothing
  , "ProviderName" : Nothing
  , "ClientId" : Nothing
  }

type PushSync =
  { "ApplicationArns" :: Maybe (Array String)
  , "RoleArn" :: Maybe String
  }

pushSync :: PushSync
pushSync =
  { "ApplicationArns" : Nothing
  , "RoleArn" : Nothing
  }

type CognitoStreams =
  { "StreamingStatus" :: Maybe String
  , "StreamName" :: Maybe String
  , "RoleArn" :: Maybe String
  }

cognitoStreams :: CognitoStreams
cognitoStreams =
  { "StreamingStatus" : Nothing
  , "StreamName" : Nothing
  , "RoleArn" : Nothing
  }