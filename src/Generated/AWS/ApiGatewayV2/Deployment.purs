module CloudFormation.AWS.ApiGatewayV2.Deployment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ApiId" :: Value String
  , "Description" :: Maybe (Value String)
  , "StageName" :: Maybe (Value String)
  }

derive instance newtypeDeployment :: Newtype Deployment _
derive newtype instance writeDeployment :: WriteForeign Deployment
instance resourceDeployment :: Resource Deployment where type_ _ = "AWS::ApiGatewayV2::Deployment"

deployment :: { "ApiId" :: Value String } -> Deployment
deployment required = Deployment
  (merge required
    { "Description" : Nothing
    , "StageName" : Nothing
    })