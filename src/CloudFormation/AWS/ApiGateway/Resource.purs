module CloudFormation.AWS.ApiGateway.Resource where 




-- | `AWS::ApiGateway::Resource`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html-- |
-- | - `ParentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-parentid
-- | - `PathPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-pathpart
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-resource.html#cfn-apigateway-resource-restapiid
type Resource =
  { "ParentId" :: String
  , "PathPart" :: String
  , "RestApiId" :: String
  }

resource :: { "ParentId" :: String, "PathPart" :: String, "RestApiId" :: String } -> Resource
resource required =
  required