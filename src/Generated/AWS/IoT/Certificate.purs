module CloudFormation.AWS.IoT.Certificate where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoT::Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html
-- |
-- | - `CertificateSigningRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatesigningrequest
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-status
newtype Certificate = Certificate
  { "CertificateSigningRequest" :: Value String
  , "Status" :: Value String
  }

derive instance newtypeCertificate :: Newtype Certificate _
derive newtype instance writeCertificate :: WriteForeign Certificate
instance resourceCertificate :: Resource Certificate where type_ _ = "AWS::IoT::Certificate"

certificate :: { "CertificateSigningRequest" :: Value String, "Status" :: Value String } -> Certificate
certificate required = Certificate
  required