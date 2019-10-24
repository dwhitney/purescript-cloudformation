module AWS.ApiGatewayV2.Authorizer where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Authorizer =
  { "AuthorizerUri" :: String
  , "AuthorizerType" :: String
  , "IdentitySource" :: Array String
  , "ApiId" :: String
  , "Name" :: String
  , "IdentityValidationExpression" :: Maybe String
  , "AuthorizerCredentialsArn" :: Maybe String
  , "AuthorizerResultTtlInSeconds" :: Maybe Int
  }

authorizer :: { "AuthorizerUri" :: String, "AuthorizerType" :: String, "IdentitySource" :: Array String, "ApiId" :: String, "Name" :: String } -> Authorizer
authorizer required =
  merge required
    { "IdentityValidationExpression" : Nothing
    , "AuthorizerCredentialsArn" : Nothing
    , "AuthorizerResultTtlInSeconds" : Nothing
    }