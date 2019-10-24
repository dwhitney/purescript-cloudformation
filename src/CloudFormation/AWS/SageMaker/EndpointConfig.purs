module CloudFormation.AWS.SageMaker.EndpointConfig where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type EndpointConfig =
  { "ProductionVariants" :: Array ProductionVariant
  , "KmsKeyId" :: Maybe String
  , "EndpointConfigName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

endpointConfig :: { "ProductionVariants" :: Array ProductionVariant } -> EndpointConfig
endpointConfig required =
  merge required
    { "KmsKeyId" : Nothing
    , "EndpointConfigName" : Nothing
    , "Tags" : Nothing
    }

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
  merge required
    { "AcceleratorType" : Nothing
    }