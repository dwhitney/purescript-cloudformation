module CloudFormation.AWS.ApiGateway.RequestValidator where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type RequestValidator =
  { "RestApiId" :: String
  , "Name" :: Maybe String
  , "ValidateRequestBody" :: Maybe Boolean
  , "ValidateRequestParameters" :: Maybe Boolean
  }

requestValidator :: { "RestApiId" :: String } -> RequestValidator
requestValidator required =
  merge required
    { "Name" : Nothing
    , "ValidateRequestBody" : Nothing
    , "ValidateRequestParameters" : Nothing
    }