module CloudFormation.AWS.ApiGateway.DocumentationPart where 

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
type DocumentationPart =
  { "Location" :: Location
  , "Properties" :: String
  , "RestApiId" :: String
  }

documentationPart :: { "Location" :: Location, "Properties" :: String, "RestApiId" :: String } -> DocumentationPart
documentationPart required =
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
  { "Method" :: Maybe String
  , "Name" :: Maybe String
  , "Path" :: Maybe String
  , "StatusCode" :: Maybe String
  , "Type" :: Maybe String
  }

location :: Location
location =
  { "Method" : Nothing
  , "Name" : Nothing
  , "Path" : Nothing
  , "StatusCode" : Nothing
  , "Type" : Nothing
  }