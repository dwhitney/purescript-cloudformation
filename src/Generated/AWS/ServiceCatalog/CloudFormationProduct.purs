module CloudFormation.AWS.ServiceCatalog.CloudFormationProduct where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "Owner" :: Value String
  , "Name" :: Value String
  , "ProvisioningArtifactParameters" :: Value (Array ProvisioningArtifactProperties)
  , "SupportDescription" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Distributor" :: Maybe (Value String)
  , "SupportEmail" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  , "SupportUrl" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeCloudFormationProduct :: Newtype CloudFormationProduct _
derive newtype instance writeCloudFormationProduct :: WriteForeign CloudFormationProduct
instance resourceCloudFormationProduct :: Resource CloudFormationProduct where type_ _ = "AWS::ServiceCatalog::CloudFormationProduct"

cloudFormationProduct :: { "Owner" :: Value String, "Name" :: Value String, "ProvisioningArtifactParameters" :: Value (Array ProvisioningArtifactProperties) } -> CloudFormationProduct
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
  { "Info" :: Value CF.Json
  , "Description" :: Maybe (Value String)
  , "DisableTemplateValidation" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
  }

provisioningArtifactProperties :: { "Info" :: Value CF.Json } -> ProvisioningArtifactProperties
provisioningArtifactProperties required =
  (merge required
    { "Description" : Nothing
    , "DisableTemplateValidation" : Nothing
    , "Name" : Nothing
    })