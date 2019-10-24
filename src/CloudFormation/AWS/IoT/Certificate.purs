module CloudFormation.AWS.IoT.Certificate where 




type Certificate =
  { "CertificateSigningRequest" :: String
  , "Status" :: String
  }

certificate :: { "CertificateSigningRequest" :: String, "Status" :: String } -> Certificate
certificate required =
  required