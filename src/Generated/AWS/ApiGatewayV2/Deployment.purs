module CloudFormation.AWS.ApiGatewayV2.Deployment where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGatewayV2::Deployment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-description
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-stagename
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-apiid
type Deployment =
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "StageName" :: Maybe String
  }

deployment :: { "ApiId" :: String } -> Deployment
deployment required =
  merge required
    { "Description" : Nothing
    , "StageName" : Nothing
    }