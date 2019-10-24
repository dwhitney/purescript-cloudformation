module AWS.ServiceCatalog.CloudFormationProvisionedProduct where 

import Data.Maybe (Maybe(..))
import Tag


type CloudFormationProvisionedProduct =
  { "PathId" :: Maybe String
  , "ProvisioningParameters" :: Maybe (Array ProvisioningParameter)
  , "ProvisioningPreferences" :: Maybe ProvisioningPreferences
  , "ProductName" :: Maybe String
  , "ProvisioningArtifactName" :: Maybe String
  , "NotificationArns" :: Maybe (Array String)
  , "AcceptLanguage" :: Maybe String
  , "ProductId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "ProvisionedProductName" :: Maybe String
  , "ProvisioningArtifactId" :: Maybe String
  }

cloudFormationProvisionedProduct :: CloudFormationProvisionedProduct
cloudFormationProvisionedProduct =
  { "PathId" : Nothing
  , "ProvisioningParameters" : Nothing
  , "ProvisioningPreferences" : Nothing
  , "ProductName" : Nothing
  , "ProvisioningArtifactName" : Nothing
  , "NotificationArns" : Nothing
  , "AcceptLanguage" : Nothing
  , "ProductId" : Nothing
  , "Tags" : Nothing
  , "ProvisionedProductName" : Nothing
  , "ProvisioningArtifactId" : Nothing
  }

type ProvisioningPreferences =
  { "StackSetAccounts" :: Maybe (Array String)
  , "StackSetFailureToleranceCount" :: Maybe Int
  , "StackSetMaxConcurrencyPercentage" :: Maybe Int
  , "StackSetMaxConcurrencyCount" :: Maybe Int
  , "StackSetRegions" :: Maybe (Array String)
  , "StackSetOperationType" :: Maybe String
  , "StackSetFailureTolerancePercentage" :: Maybe Int
  }

provisioningPreferences :: ProvisioningPreferences
provisioningPreferences =
  { "StackSetAccounts" : Nothing
  , "StackSetFailureToleranceCount" : Nothing
  , "StackSetMaxConcurrencyPercentage" : Nothing
  , "StackSetMaxConcurrencyCount" : Nothing
  , "StackSetRegions" : Nothing
  , "StackSetOperationType" : Nothing
  , "StackSetFailureTolerancePercentage" : Nothing
  }

type ProvisioningParameter =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

provisioningParameter :: ProvisioningParameter
provisioningParameter =
  { "Value" : Nothing
  , "Key" : Nothing
  }