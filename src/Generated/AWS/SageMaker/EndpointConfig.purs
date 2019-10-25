module CloudFormation.AWS.SageMaker.EndpointConfig where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SageMaker::EndpointConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html
-- |
-- | - `ProductionVariants`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-productionvariants
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-kmskeyid
-- | - `EndpointConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-endpointconfigname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-tags
newtype EndpointConfig = EndpointConfig
  { "ProductionVariants" :: Value (Array ProductionVariant)
  , "KmsKeyId" :: Maybe (Value String)
  , "EndpointConfigName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeEndpointConfig :: Newtype EndpointConfig _
derive newtype instance writeEndpointConfig :: WriteForeign EndpointConfig
instance resourceEndpointConfig :: Resource EndpointConfig where type_ _ = "AWS::SageMaker::EndpointConfig"

endpointConfig :: { "ProductionVariants" :: Value (Array ProductionVariant) } -> EndpointConfig
endpointConfig required = EndpointConfig
  (merge required
    { "KmsKeyId" : Nothing
    , "EndpointConfigName" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::SageMaker::EndpointConfig.ProductionVariant`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html
-- |
-- | - `ModelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-modelname
-- | - `VariantName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-variantname
-- | - `InitialInstanceCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialinstancecount
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-instancetype
-- | - `AcceleratorType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-acceleratortype
-- | - `InitialVariantWeight`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialvariantweight
type ProductionVariant =
  { "ModelName" :: Value String
  , "VariantName" :: Value String
  , "InitialInstanceCount" :: Value Int
  , "InstanceType" :: Value String
  , "InitialVariantWeight" :: Value Number
  , "AcceleratorType" :: Maybe (Value String)
  }

productionVariant :: { "ModelName" :: Value String, "VariantName" :: Value String, "InitialInstanceCount" :: Value Int, "InstanceType" :: Value String, "InitialVariantWeight" :: Value Number } -> ProductionVariant
productionVariant required =
  (merge required
    { "AcceleratorType" : Nothing
    })