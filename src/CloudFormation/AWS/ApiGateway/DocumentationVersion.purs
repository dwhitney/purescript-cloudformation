module CloudFormation.AWS.ApiGateway.DocumentationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGateway::DocumentationVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-description
-- | - `DocumentationVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-documentationversion
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-restapiid
type DocumentationVersion =
  { "DocumentationVersion" :: String
  , "RestApiId" :: String
  , "Description" :: Maybe String
  }

documentationVersion :: { "DocumentationVersion" :: String, "RestApiId" :: String } -> DocumentationVersion
documentationVersion required =
  merge required
    { "Description" : Nothing
    }