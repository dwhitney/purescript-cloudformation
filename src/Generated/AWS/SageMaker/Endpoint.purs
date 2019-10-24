module CloudFormation.AWS.SageMaker.Endpoint where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SageMaker::Endpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html
-- |
-- | - `EndpointName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointname
-- | - `EndpointConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointconfigname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-tags
newtype Endpoint = Endpoint
  { "EndpointConfigName" :: String
  , "EndpointName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeEndpoint :: Newtype Endpoint _
instance resourceEndpoint :: Resource Endpoint where type_ _ = "AWS::SageMaker::Endpoint"

endpoint :: { "EndpointConfigName" :: String } -> Endpoint
endpoint required = Endpoint
  (merge required
    { "EndpointName" : Nothing
    , "Tags" : Nothing
    })