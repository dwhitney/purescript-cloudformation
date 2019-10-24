module CloudFormation.AWS.ServiceCatalog.CloudFormationProduct where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign (Foreign)


type CloudFormationProduct =
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

cloudFormationProduct :: { "Owner" :: String, "Name" :: String, "ProvisioningArtifactParameters" :: Array ProvisioningArtifactProperties } -> CloudFormationProduct
cloudFormationProduct required =
  merge required
    { "SupportDescription" : Nothing
    , "Description" : Nothing
    , "Distributor" : Nothing
    , "SupportEmail" : Nothing
    , "AcceptLanguage" : Nothing
    , "SupportUrl" : Nothing
    , "Tags" : Nothing
    }

type ProvisioningArtifactProperties =
  { "Info" :: Foreign
  , "Description" :: Maybe String
  , "DisableTemplateValidation" :: Maybe Boolean
  , "Name" :: Maybe String
  }

provisioningArtifactProperties :: { "Info" :: Foreign } -> ProvisioningArtifactProperties
provisioningArtifactProperties required =
  merge required
    { "Description" : Nothing
    , "DisableTemplateValidation" : Nothing
    , "Name" : Nothing
    }