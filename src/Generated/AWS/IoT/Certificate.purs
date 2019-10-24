module CloudFormation.AWS.IoT.Certificate where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoT::Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html
-- |
-- | - `CertificateSigningRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatesigningrequest
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-status
newtype Certificate = Certificate
  { "CertificateSigningRequest" :: String
  , "Status" :: String
  }

derive instance newtypeCertificate :: Newtype Certificate _
instance resourceCertificate :: Resource Certificate where type_ _ = "AWS::IoT::Certificate"

certificate :: { "CertificateSigningRequest" :: String, "Status" :: String } -> Certificate
certificate required = Certificate
  required