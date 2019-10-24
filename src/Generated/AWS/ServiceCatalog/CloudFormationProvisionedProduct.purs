module CloudFormation.AWS.ServiceCatalog.CloudFormationProvisionedProduct where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::CloudFormationProvisionedProduct`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html
-- |
-- | - `PathId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-pathid
-- | - `ProvisioningParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameters
-- | - `ProvisioningPreferences`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences
-- | - `ProductName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-productname
-- | - `ProvisioningArtifactName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningartifactname
-- | - `NotificationArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-notificationarns
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-acceptlanguage
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-productid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-tags
-- | - `ProvisionedProductName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisionedproductname
-- | - `ProvisioningArtifactId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningartifactid
newtype CloudFormationProvisionedProduct = CloudFormationProvisionedProduct
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

derive instance newtypeCloudFormationProvisionedProduct :: Newtype CloudFormationProvisionedProduct _
instance resourceCloudFormationProvisionedProduct :: Resource CloudFormationProvisionedProduct where type_ _ = "AWS::ServiceCatalog::CloudFormationProvisionedProduct"

cloudFormationProvisionedProduct :: CloudFormationProvisionedProduct
cloudFormationProvisionedProduct = CloudFormationProvisionedProduct
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

-- | `AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html
-- |
-- | - `StackSetAccounts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetaccounts
-- | - `StackSetFailureToleranceCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancecount
-- | - `StackSetMaxConcurrencyPercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencypercentage
-- | - `StackSetMaxConcurrencyCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencycount
-- | - `StackSetRegions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetregions
-- | - `StackSetOperationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetoperationtype
-- | - `StackSetFailureTolerancePercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancepercentage
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

-- | `AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningParameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-key
type ProvisioningParameter =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

provisioningParameter :: ProvisioningParameter
provisioningParameter =
  { "Value" : Nothing
  , "Key" : Nothing
  }