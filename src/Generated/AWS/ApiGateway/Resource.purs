module CloudFormation.AWS.ApiGateway.Resource where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::Resource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html
-- |
-- | - `ParentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-parentid
-- | - `PathPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-pathpart
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-restapiid
newtype Resource = Resource
  { "ParentId" :: String
  , "PathPart" :: String
  , "RestApiId" :: String
  }

derive instance newtypeResource :: Newtype Resource _
instance resourceResource :: Resource Resource where type_ _ = "AWS::ApiGateway::Resource"

resource :: { "ParentId" :: String, "PathPart" :: String, "RestApiId" :: String } -> Resource
resource required = Resource
  required