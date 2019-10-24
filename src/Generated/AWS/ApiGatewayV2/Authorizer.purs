module CloudFormation.AWS.ApiGatewayV2.Authorizer where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
-- | - `AuthorizerResultTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizerresultttlinseconds
-- | - `IdentitySource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identitysource
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-apiid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-name
newtype Authorizer = Authorizer
  { "AuthorizerUri" :: String
  , "AuthorizerType" :: String
  , "IdentitySource" :: Array String
  , "ApiId" :: String
  , "Name" :: String
  , "IdentityValidationExpression" :: Maybe String
  , "AuthorizerCredentialsArn" :: Maybe String
  , "AuthorizerResultTtlInSeconds" :: Maybe Int
  }

derive instance newtypeAuthorizer :: Newtype Authorizer _
instance resourceAuthorizer :: Resource Authorizer where type_ _ = "AWS::ApiGatewayV2::Authorizer"

authorizer :: { "AuthorizerUri" :: String, "AuthorizerType" :: String, "IdentitySource" :: Array String, "ApiId" :: String, "Name" :: String } -> Authorizer
authorizer required = Authorizer
  (merge required
    { "IdentityValidationExpression" : Nothing
    , "AuthorizerCredentialsArn" : Nothing
    , "AuthorizerResultTtlInSeconds" : Nothing
    })