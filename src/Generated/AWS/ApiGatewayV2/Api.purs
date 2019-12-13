module CloudFormation.AWS.ApiGatewayV2.Api where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::Api`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html
-- |
-- | - `RouteSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routeselectionexpression
-- | - `BodyS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-bodys3location
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-description
-- | - `BasePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-basepath
-- | - `FailOnWarnings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-failonwarnings
-- | - `DisableSchemaValidation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-disableschemavalidation
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-name
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-target
-- | - `CredentialsArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-credentialsarn
-- | - `CorsConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-corsconfiguration
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-version
-- | - `ProtocolType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-protocoltype
-- | - `RouteKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routekey
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-body
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-tags
-- | - `ApiKeySelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-apikeyselectionexpression
newtype Api = Api
  { "RouteSelectionExpression" :: Maybe (Value String)
  , "BodyS3Location" :: Maybe (Value BodyS3Location)
  , "Description" :: Maybe (Value String)
  , "BasePath" :: Maybe (Value String)
  , "FailOnWarnings" :: Maybe (Value Boolean)
  , "DisableSchemaValidation" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
  , "Target" :: Maybe (Value String)
  , "CredentialsArn" :: Maybe (Value String)
  , "CorsConfiguration" :: Maybe (Value Cors)
  , "Version" :: Maybe (Value String)
  , "ProtocolType" :: Maybe (Value String)
  , "RouteKey" :: Maybe (Value String)
  , "Body" :: Maybe (Value CF.Json)
  , "Tags" :: Maybe (Value CF.Json)
  , "ApiKeySelectionExpression" :: Maybe (Value String)
  }

derive instance newtypeApi :: Newtype Api _
derive newtype instance writeApi :: WriteForeign Api
instance resourceApi :: Resource Api where type_ _ = "AWS::ApiGatewayV2::Api"

api :: Api
api = Api
  { "RouteSelectionExpression" : Nothing
  , "BodyS3Location" : Nothing
  , "Description" : Nothing
  , "BasePath" : Nothing
  , "FailOnWarnings" : Nothing
  , "DisableSchemaValidation" : Nothing
  , "Name" : Nothing
  , "Target" : Nothing
  , "CredentialsArn" : Nothing
  , "CorsConfiguration" : Nothing
  , "Version" : Nothing
  , "ProtocolType" : Nothing
  , "RouteKey" : Nothing
  , "Body" : Nothing
  , "Tags" : Nothing
  , "ApiKeySelectionExpression" : Nothing
  }

-- | `AWS::ApiGatewayV2::Api.BodyS3Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html
-- |
-- | - `Etag`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-etag
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-bucket
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-version
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-key
type BodyS3Location =
  { "Etag" :: Maybe (Value String)
  , "Bucket" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  }

bodyS3Location :: BodyS3Location
bodyS3Location =
  { "Etag" : Nothing
  , "Bucket" : Nothing
  , "Version" : Nothing
  , "Key" : Nothing
  }

-- | `AWS::ApiGatewayV2::Api.Cors`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html
-- |
-- | - `AllowOrigins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-alloworigins
-- | - `AllowCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowcredentials
-- | - `ExposeHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-exposeheaders
-- | - `AllowHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowheaders
-- | - `MaxAge`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-maxage
-- | - `AllowMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowmethods
type Cors =
  { "AllowOrigins" :: Maybe (Value (Array String))
  , "AllowCredentials" :: Maybe (Value Boolean)
  , "ExposeHeaders" :: Maybe (Value (Array String))
  , "AllowHeaders" :: Maybe (Value (Array String))
  , "MaxAge" :: Maybe (Value Int)
  , "AllowMethods" :: Maybe (Value (Array String))
  }

cors :: Cors
cors =
  { "AllowOrigins" : Nothing
  , "AllowCredentials" : Nothing
  , "ExposeHeaders" : Nothing
  , "AllowHeaders" : Nothing
  , "MaxAge" : Nothing
  , "AllowMethods" : Nothing
  }