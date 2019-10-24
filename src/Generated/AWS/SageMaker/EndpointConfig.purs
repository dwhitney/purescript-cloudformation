module CloudFormation.AWS.SageMaker.EndpointConfig where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ProductionVariants" :: Array ProductionVariant
  , "KmsKeyId" :: Maybe String
  , "EndpointConfigName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeEndpointConfig :: Newtype EndpointConfig _
instance resourceEndpointConfig :: Resource EndpointConfig where type_ _ = "AWS::SageMaker::EndpointConfig"

endpointConfig :: { "ProductionVariants" :: Array ProductionVariant } -> EndpointConfig
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
  { "ModelName" :: String
  , "VariantName" :: String
  , "InitialInstanceCount" :: Int
  , "InstanceType" :: String
  , "InitialVariantWeight" :: Number
  , "AcceleratorType" :: Maybe String
  }

productionVariant :: { "ModelName" :: String, "VariantName" :: String, "InitialInstanceCount" :: Int, "InstanceType" :: String, "InitialVariantWeight" :: Number } -> ProductionVariant
productionVariant required =
  (merge required
    { "AcceleratorType" : Nothing
    })