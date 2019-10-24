module CloudFormation.AWS.ApiGatewayV2.Deployment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::Deployment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-description
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-stagename
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-apiid
newtype Deployment = Deployment
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "StageName" :: Maybe String
  }

derive instance newtypeDeployment :: Newtype Deployment _
instance resourceDeployment :: Resource Deployment where type_ _ = "AWS::ApiGatewayV2::Deployment"

deployment :: { "ApiId" :: String } -> Deployment
deployment required = Deployment
  (merge required
    { "Description" : Nothing
    , "StageName" : Nothing
    })