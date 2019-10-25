module CloudFormation.AWS.CertificateManager.Certificate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CertificateManager::Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainname
-- | - `DomainValidationOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainvalidationoptions
-- | - `SubjectAlternativeNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-subjectalternativenames
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-tags
-- | - `ValidationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-validationmethod
newtype Certificate = Certificate
  { "DomainName" :: Value String
  , "DomainValidationOptions" :: Maybe (Value (Array DomainValidationOption))
  , "SubjectAlternativeNames" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "ValidationMethod" :: Maybe (Value String)
  }

derive instance newtypeCertificate :: Newtype Certificate _
derive newtype instance writeCertificate :: WriteForeign Certificate
instance resourceCertificate :: Resource Certificate where type_ _ = "AWS::CertificateManager::Certificate"

certificate :: { "DomainName" :: Value String } -> Certificate
certificate required = Certificate
  (merge required
    { "DomainValidationOptions" : Nothing
    , "SubjectAlternativeNames" : Nothing
    , "Tags" : Nothing
    , "ValidationMethod" : Nothing
    })

-- | `AWS::CertificateManager::Certificate.DomainValidationOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname
-- | - `ValidationDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain
type DomainValidationOption =
  { "DomainName" :: Value String
  , "ValidationDomain" :: Value String
  }

domainValidationOption :: { "DomainName" :: Value String, "ValidationDomain" :: Value String } -> DomainValidationOption
domainValidationOption required =
  required