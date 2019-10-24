module CloudFormation.AWS.ApiGateway.DocumentationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::DocumentationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-description
-- | - `DocumentationVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-documentationversion
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-restapiid
newtype DocumentationVersion = DocumentationVersion
  { "DocumentationVersion" :: String
  , "RestApiId" :: String
  , "Description" :: Maybe String
  }

derive instance newtypeDocumentationVersion :: Newtype DocumentationVersion _
instance resourceDocumentationVersion :: Resource DocumentationVersion where type_ _ = "AWS::ApiGateway::DocumentationVersion"

documentationVersion :: { "DocumentationVersion" :: String, "RestApiId" :: String } -> DocumentationVersion
documentationVersion required = DocumentationVersion
  (merge required
    { "Description" : Nothing
    })