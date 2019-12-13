module CloudFormation.AWS.ApiGatewayV2.Authorizer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::Authorizer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html
-- |
-- | - `IdentityValidationExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identityvalidationexpression
-- | - `AuthorizerUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizeruri
-- | - `AuthorizerCredentialsArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizercredentialsarn
-- | - `AuthorizerType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizertype
-- | - `JwtConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-jwtconfiguration
-- | - `AuthorizerResultTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizerresultttlinseconds
-- | - `IdentitySource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identitysource
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-apiid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-name
newtype Authorizer = Authorizer
  { "AuthorizerType" :: Value String
  , "IdentitySource" :: Value (Array String)
  , "ApiId" :: Value String
  , "Name" :: Value String
  , "IdentityValidationExpression" :: Maybe (Value String)
  , "AuthorizerUri" :: Maybe (Value String)
  , "AuthorizerCredentialsArn" :: Maybe (Value String)
  , "JwtConfiguration" :: Maybe (Value JWTConfiguration)
  , "AuthorizerResultTtlInSeconds" :: Maybe (Value Int)
  }

derive instance newtypeAuthorizer :: Newtype Authorizer _
derive newtype instance writeAuthorizer :: WriteForeign Authorizer
instance resourceAuthorizer :: Resource Authorizer where type_ _ = "AWS::ApiGatewayV2::Authorizer"

authorizer :: { "AuthorizerType" :: Value String, "IdentitySource" :: Value (Array String), "ApiId" :: Value String, "Name" :: Value String } -> Authorizer
authorizer required = Authorizer
  (merge required
    { "IdentityValidationExpression" : Nothing
    , "AuthorizerUri" : Nothing
    , "AuthorizerCredentialsArn" : Nothing
    , "JwtConfiguration" : Nothing
    , "AuthorizerResultTtlInSeconds" : Nothing
    })

-- | `AWS::ApiGatewayV2::Authorizer.JWTConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html
-- |
-- | - `Issuer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-issuer
-- | - `Audience`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-audience
type JWTConfiguration =
  { "Issuer" :: Maybe (Value String)
  , "Audience" :: Maybe (Value (Array String))
  }

jwtcWTConfiguration :: JWTConfiguration
jwtcWTConfiguration =
  { "Issuer" : Nothing
  , "Audience" : Nothing
  }