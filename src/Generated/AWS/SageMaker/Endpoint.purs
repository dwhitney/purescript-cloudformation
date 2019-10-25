module CloudFormation.AWS.SageMaker.Endpoint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "EndpointConfigName" :: Value String
  , "EndpointName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeEndpoint :: Newtype Endpoint _
derive newtype instance writeEndpoint :: WriteForeign Endpoint
instance resourceEndpoint :: Resource Endpoint where type_ _ = "AWS::SageMaker::Endpoint"

endpoint :: { "EndpointConfigName" :: Value String } -> Endpoint
endpoint required = Endpoint
  (merge required
    { "EndpointName" : Nothing
    , "Tags" : Nothing
    })