module CloudFormation.AWS.DMS.Certificate where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DMS::Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html
-- |
-- | - `CertificateIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificateidentifier
-- | - `CertificatePem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatepem
-- | - `CertificateWallet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatewallet
newtype Certificate = Certificate
  { "CertificateIdentifier" :: Maybe String
  , "CertificatePem" :: Maybe String
  , "CertificateWallet" :: Maybe String
  }

derive instance newtypeCertificate :: Newtype Certificate _
instance resourceCertificate :: Resource Certificate where type_ _ = "AWS::DMS::Certificate"

certificate :: Certificate
certificate = Certificate
  { "CertificateIdentifier" : Nothing
  , "CertificatePem" : Nothing
  , "CertificateWallet" : Nothing
  }