module CloudFormation.AWS.CertificateManager.Certificate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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

-- | `AWS::CertificateManager::Certificate.DomainValidationOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname
-- | - `ValidationDomain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain
type DomainValidationOption =
  { "DomainName" :: String
  , "ValidationDomain" :: String
  }

domainValidationOption :: { "DomainName" :: String, "ValidationDomain" :: String } -> DomainValidationOption
domainValidationOption required =
  required