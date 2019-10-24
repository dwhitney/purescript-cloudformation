module CloudFormation.AWS.ApiGateway.Authorizer where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Authorizer =
  { "RestApiId" :: String
  , "Type" :: String
  , "AuthType" :: Maybe String
  , "AuthorizerCredentials" :: Maybe String
  , "AuthorizerResultTtlInSeconds" :: Maybe Int
  , "AuthorizerUri" :: Maybe String
  , "IdentitySource" :: Maybe String
  , "IdentityValidationExpression" :: Maybe String
  , "Name" :: Maybe String
  , "ProviderARNs" :: Maybe (Array String)
  }

authorizer :: { "RestApiId" :: String, "Type" :: String } -> Authorizer
authorizer required =
  merge required
    { "AuthType" : Nothing
    , "AuthorizerCredentials" : Nothing
    , "AuthorizerResultTtlInSeconds" : Nothing
    , "AuthorizerUri" : Nothing
    , "IdentitySource" : Nothing
    , "IdentityValidationExpression" : Nothing
    , "Name" : Nothing
    , "ProviderARNs" : Nothing
    }