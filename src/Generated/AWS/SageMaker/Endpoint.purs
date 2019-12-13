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
-- | - `RetainAllVariantProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-retainallvariantproperties
-- | - `EndpointName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointname
-- | - `ExcludeRetainedVariantProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-excluderetainedvariantproperties
-- | - `EndpointConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-endpointconfigname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpoint.html#cfn-sagemaker-endpoint-tags
newtype Endpoint = Endpoint
  { "EndpointConfigName" :: Value String
  , "RetainAllVariantProperties" :: Maybe (Value Boolean)
  , "EndpointName" :: Maybe (Value String)
  , "ExcludeRetainedVariantProperties" :: Maybe (Value (Array VariantProperty))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeEndpoint :: Newtype Endpoint _
derive newtype instance writeEndpoint :: WriteForeign Endpoint
instance resourceEndpoint :: Resource Endpoint where type_ _ = "AWS::SageMaker::Endpoint"

endpoint :: { "EndpointConfigName" :: Value String } -> Endpoint
endpoint required = Endpoint
  (merge required
    { "RetainAllVariantProperties" : Nothing
    , "EndpointName" : Nothing
    , "ExcludeRetainedVariantProperties" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::SageMaker::Endpoint.VariantProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html
-- |
-- | - `VariantPropertyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html#cfn-sagemaker-endpoint-variantproperty-variantpropertytype
type VariantProperty =
  { "VariantPropertyType" :: Maybe (Value String)
  }

variantProperty :: VariantProperty
variantProperty =
  { "VariantPropertyType" : Nothing
  }