module CloudFormation.AWS.ServiceCatalog.CloudFormationProduct where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF


-- | `AWS::ServiceCatalog::CloudFormationProduct`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html
-- |
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-owner
-- | - `SupportDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportdescription
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-description
-- | - `Distributor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-distributor
-- | - `SupportEmail`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportemail
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-acceptlanguage
-- | - `SupportUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supporturl
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-name
-- | - `ProvisioningArtifactParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactparameters
newtype CloudFormationProduct = CloudFormationProduct
  { "Owner" :: String
  , "Name" :: String
  , "ProvisioningArtifactParameters" :: Array ProvisioningArtifactProperties
  , "SupportDescription" :: Maybe String
  , "Description" :: Maybe String
  , "Distributor" :: Maybe String
  , "SupportEmail" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  , "SupportUrl" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeCloudFormationProduct :: Newtype CloudFormationProduct _
instance resourceCloudFormationProduct :: Resource CloudFormationProduct where type_ _ = "AWS::ServiceCatalog::CloudFormationProduct"

cloudFormationProduct :: { "Owner" :: String, "Name" :: String, "ProvisioningArtifactParameters" :: Array ProvisioningArtifactProperties } -> CloudFormationProduct
cloudFormationProduct required = CloudFormationProduct
  (merge required
    { "SupportDescription" : Nothing
    , "Description" : Nothing
    , "Distributor" : Nothing
    , "SupportEmail" : Nothing
    , "AcceptLanguage" : Nothing
    , "SupportUrl" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::ServiceCatalog::CloudFormationProduct.ProvisioningArtifactProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-description
-- | - `DisableTemplateValidation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-disabletemplatevalidation
-- | - `Info`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-info
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-name
type ProvisioningArtifactProperties =
  { "Info" :: CF.Json
  , "Description" :: Maybe String
  , "DisableTemplateValidation" :: Maybe Boolean
  , "Name" :: Maybe String
  }

provisioningArtifactProperties :: { "Info" :: CF.Json } -> ProvisioningArtifactProperties
provisioningArtifactProperties required =
  (merge required
    { "Description" : Nothing
    , "DisableTemplateValidation" : Nothing
    , "Name" : Nothing
    })