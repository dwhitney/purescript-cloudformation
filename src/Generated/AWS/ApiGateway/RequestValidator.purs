module CloudFormation.AWS.ApiGateway.RequestValidator where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::RequestValidator`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-name
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-restapiid
-- | - `ValidateRequestBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestbody
-- | - `ValidateRequestParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestparameters
newtype RequestValidator = RequestValidator
  { "RestApiId" :: Value String
  , "Name" :: Maybe (Value String)
  , "ValidateRequestBody" :: Maybe (Value Boolean)
  , "ValidateRequestParameters" :: Maybe (Value Boolean)
  }

derive instance newtypeRequestValidator :: Newtype RequestValidator _
derive newtype instance writeRequestValidator :: WriteForeign RequestValidator
instance resourceRequestValidator :: Resource RequestValidator where type_ _ = "AWS::ApiGateway::RequestValidator"

requestValidator :: { "RestApiId" :: Value String } -> RequestValidator
requestValidator required = RequestValidator
  (merge required
    { "Name" : Nothing
    , "ValidateRequestBody" : Nothing
    , "ValidateRequestParameters" : Nothing
    })