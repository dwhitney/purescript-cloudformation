module CloudFormation.AWS.ApiGateway.DocumentationPart where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))


-- | `AWS::ApiGateway::DocumentationPart`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html
-- |
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-location
-- | - `Properties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-properties
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-restapiid
newtype DocumentationPart = DocumentationPart
  { "Location" :: Value Location
  , "Properties" :: Value String
  , "RestApiId" :: Value String
  }

derive instance newtypeDocumentationPart :: Newtype DocumentationPart _
derive newtype instance writeDocumentationPart :: WriteForeign DocumentationPart
instance resourceDocumentationPart :: Resource DocumentationPart where type_ _ = "AWS::ApiGateway::DocumentationPart"

documentationPart :: { "Location" :: Value Location, "Properties" :: Value String, "RestApiId" :: Value String } -> DocumentationPart
documentationPart required = DocumentationPart
  required

-- | `AWS::ApiGateway::DocumentationPart.Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html
-- |
-- | - `Method`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-method
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-name
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-path
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-statuscode
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-type
type Location =
  { "Method" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "Path" :: Maybe (Value String)
  , "StatusCode" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  }

location :: Location
location =
  { "Method" : Nothing
  , "Name" : Nothing
  , "Path" : Nothing
  , "StatusCode" : Nothing
  , "Type" : Nothing
  }