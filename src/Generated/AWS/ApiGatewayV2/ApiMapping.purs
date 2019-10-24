module CloudFormation.AWS.ApiGatewayV2.ApiMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DomainName" :: String
  , "Stage" :: String
  , "ApiId" :: String
  , "ApiMappingKey" :: Maybe String
  }

derive instance newtypeApiMapping :: Newtype ApiMapping _
instance resourceApiMapping :: Resource ApiMapping where type_ _ = "AWS::ApiGatewayV2::ApiMapping"

apiMapping :: { "DomainName" :: String, "Stage" :: String, "ApiId" :: String } -> ApiMapping
apiMapping required = ApiMapping
  (merge required
    { "ApiMappingKey" : Nothing
    })