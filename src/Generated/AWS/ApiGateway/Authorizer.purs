module CloudFormation.AWS.ApiGateway.Authorizer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "RestApiId" :: Value String
  , "Type" :: Value String
  , "AuthType" :: Maybe (Value String)
  , "AuthorizerCredentials" :: Maybe (Value String)
  , "AuthorizerResultTtlInSeconds" :: Maybe (Value Int)
  , "AuthorizerUri" :: Maybe (Value String)
  , "IdentitySource" :: Maybe (Value String)
  , "IdentityValidationExpression" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "ProviderARNs" :: Maybe (Value (Array String))
  }

derive instance newtypeAuthorizer :: Newtype Authorizer _
derive newtype instance writeAuthorizer :: WriteForeign Authorizer
instance resourceAuthorizer :: Resource Authorizer where type_ _ = "AWS::ApiGateway::Authorizer"

authorizer :: { "RestApiId" :: Value String, "Type" :: Value String } -> Authorizer
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