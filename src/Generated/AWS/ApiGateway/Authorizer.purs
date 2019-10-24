module CloudFormation.AWS.ApiGateway.Authorizer where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::Authorizer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html
-- |
-- | - `AuthType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authtype
-- | - `AuthorizerCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizercredentials
-- | - `AuthorizerResultTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizerresultttlinseconds
-- | - `AuthorizerUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizeruri
-- | - `IdentitySource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-identitysource
-- | - `IdentityValidationExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-identityvalidationexpression
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-name
-- | - `ProviderARNs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-providerarns
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-restapiid
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-type
newtype Authorizer = Authorizer
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

derive instance newtypeAuthorizer :: Newtype Authorizer _
instance resourceAuthorizer :: Resource Authorizer where type_ _ = "AWS::ApiGateway::Authorizer"

authorizer :: { "RestApiId" :: String, "Type" :: String } -> Authorizer
authorizer required = Authorizer
  (merge required
    { "AuthType" : Nothing
    , "AuthorizerCredentials" : Nothing
    , "AuthorizerResultTtlInSeconds" : Nothing
    , "AuthorizerUri" : Nothing
    , "IdentitySource" : Nothing
    , "IdentityValidationExpression" : Nothing
    , "Name" : Nothing
    , "ProviderARNs" : Nothing
    })