module CloudFormation.AWS.DMS.Certificate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "CertificateIdentifier" :: Maybe (Value String)
  , "CertificatePem" :: Maybe (Value String)
  , "CertificateWallet" :: Maybe (Value String)
  }

derive instance newtypeCertificate :: Newtype Certificate _
derive newtype instance writeCertificate :: WriteForeign Certificate
instance resourceCertificate :: Resource Certificate where type_ _ = "AWS::DMS::Certificate"

certificate :: Certificate
certificate = Certificate
  { "CertificateIdentifier" : Nothing
  , "CertificatePem" : Nothing
  , "CertificateWallet" : Nothing
  }