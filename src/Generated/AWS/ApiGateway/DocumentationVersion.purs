module CloudFormation.AWS.ApiGateway.DocumentationVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DocumentationVersion" :: Value String
  , "RestApiId" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeDocumentationVersion :: Newtype DocumentationVersion _
derive newtype instance writeDocumentationVersion :: WriteForeign DocumentationVersion
instance resourceDocumentationVersion :: Resource DocumentationVersion where type_ _ = "AWS::ApiGateway::DocumentationVersion"

documentationVersion :: { "DocumentationVersion" :: Value String, "RestApiId" :: Value String } -> DocumentationVersion
documentationVersion required = DocumentationVersion
  (merge required
    { "Description" : Nothing
    })