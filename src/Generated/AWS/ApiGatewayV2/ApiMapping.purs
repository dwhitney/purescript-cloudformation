module CloudFormation.AWS.ApiGatewayV2.ApiMapping where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::ApiMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-domainname
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-stage
-- | - `ApiMappingKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-apimappingkey
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apimapping.html#cfn-apigatewayv2-apimapping-apiid
newtype ApiMapping = ApiMapping
  { "DomainName" :: Value String
  , "Stage" :: Value String
  , "ApiId" :: Value String
  , "ApiMappingKey" :: Maybe (Value String)
  }

derive instance newtypeApiMapping :: Newtype ApiMapping _
derive newtype instance writeApiMapping :: WriteForeign ApiMapping
instance resourceApiMapping :: Resource ApiMapping where type_ _ = "AWS::ApiGatewayV2::ApiMapping"

apiMapping :: { "DomainName" :: Value String, "Stage" :: Value String, "ApiId" :: Value String } -> ApiMapping
apiMapping required = ApiMapping
  (merge required
    { "ApiMappingKey" : Nothing
    })