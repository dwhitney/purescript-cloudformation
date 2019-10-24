module CloudFormation.AWS.IoT.Certificate where 




-- | `AWS::IoT::Certificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html-- |
-- | - `CertificateSigningRequest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatesigningrequest
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-status
type Certificate =
  { "CertificateSigningRequest" :: String
  , "Status" :: String
  }

certificate :: { "CertificateSigningRequest" :: String, "Status" :: String } -> Certificate
certificate required =
  required