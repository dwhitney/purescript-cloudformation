module CloudFormation.AWS.ApiGatewayV2.ApiMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type ApiMapping =
  { "DomainName" :: String
  , "Stage" :: String
  , "ApiId" :: String
  , "ApiMappingKey" :: Maybe String
  }

apiMapping :: { "DomainName" :: String, "Stage" :: String, "ApiId" :: String } -> ApiMapping
apiMapping required =
  merge required
    { "ApiMappingKey" : Nothing
    }