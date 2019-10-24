module CloudFormation.AWS.ApiGateway.RequestValidator where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "RestApiId" :: String
  , "Name" :: Maybe String
  , "ValidateRequestBody" :: Maybe Boolean
  , "ValidateRequestParameters" :: Maybe Boolean
  }

derive instance newtypeRequestValidator :: Newtype RequestValidator _
instance resourceRequestValidator :: Resource RequestValidator where type_ _ = "AWS::ApiGateway::RequestValidator"

requestValidator :: { "RestApiId" :: String } -> RequestValidator
requestValidator required = RequestValidator
  (merge required
    { "Name" : Nothing
    , "ValidateRequestBody" : Nothing
    , "ValidateRequestParameters" : Nothing
    })