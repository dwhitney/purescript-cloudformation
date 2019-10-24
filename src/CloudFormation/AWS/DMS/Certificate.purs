module CloudFormation.AWS.DMS.Certificate where 

import Data.Maybe (Maybe(..))


-- | `AWS::DMS::Certificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html-- |
-- | - `CertificateIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificateidentifier
-- | - `CertificatePem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatepem
-- | - `CertificateWallet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatewallet
type Certificate =
  { "CertificateIdentifier" :: Maybe String
  , "CertificatePem" :: Maybe String
  , "CertificateWallet" :: Maybe String
  }

certificate :: Certificate
certificate =
  { "CertificateIdentifier" : Nothing
  , "CertificatePem" : Nothing
  , "CertificateWallet" : Nothing
  }