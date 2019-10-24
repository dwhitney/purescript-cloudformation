module CloudFormation.AWS.SageMaker.Endpoint where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::SageMaker::Endpoint`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html-- |
-- | - `EndpointName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointname
-- | - `EndpointConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointconfigname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-tags
type Endpoint =
  { "EndpointConfigName" :: String
  , "EndpointName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

endpoint :: { "EndpointConfigName" :: String } -> Endpoint
endpoint required =
  merge required
    { "EndpointName" : Nothing
    , "Tags" : Nothing
    }