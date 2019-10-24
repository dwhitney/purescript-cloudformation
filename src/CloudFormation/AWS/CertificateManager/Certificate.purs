module CloudFormation.AWS.CertificateManager.Certificate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Certificate =
  { "DomainName" :: String
  , "DomainValidationOptions" :: Maybe (Array DomainValidationOption)
  , "SubjectAlternativeNames" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  , "ValidationMethod" :: Maybe String
  }

certificate :: { "DomainName" :: String } -> Certificate
certificate required =
  merge required
    { "DomainValidationOptions" : Nothing
    , "SubjectAlternativeNames" : Nothing
    , "Tags" : Nothing
    , "ValidationMethod" : Nothing
    }

type DomainValidationOption =
  { "DomainName" :: String
  , "ValidationDomain" :: String
  }

domainValidationOption :: { "DomainName" :: String, "ValidationDomain" :: String } -> DomainValidationOption
domainValidationOption required =
  required