module AWS.DMS.Certificate where 

import Data.Maybe (Maybe(..))


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