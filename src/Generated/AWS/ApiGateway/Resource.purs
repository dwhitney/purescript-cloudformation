module CloudFormation.AWS.ApiGateway.Resource where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ParentId" :: Value String
  , "PathPart" :: Value String
  , "RestApiId" :: Value String
  }

derive instance newtypeResource :: Newtype Resource _
derive newtype instance writeResource :: WriteForeign Resource
instance resourceResource :: Resource Resource where type_ _ = "AWS::ApiGateway::Resource"

resource :: { "ParentId" :: Value String, "PathPart" :: Value String, "RestApiId" :: Value String } -> Resource
resource required = Resource
  required