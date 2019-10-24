module AWS.ApiGatewayV2.DomainName where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type DomainName =
  { "DomainName" :: String
  , "DomainNameConfigurations" :: Maybe (Array DomainNameConfiguration)
  , "Tags" :: Maybe Foreign
  }

domainName :: { "DomainName" :: String } -> DomainName
domainName required =
  merge required
    { "DomainNameConfigurations" : Nothing
    , "Tags" : Nothing
    }

type DomainNameConfiguration =
  { "EndpointType" :: Maybe String
  , "CertificateName" :: Maybe String
  , "CertificateArn" :: Maybe String
  }

domainNameConfiguration :: DomainNameConfiguration
domainNameConfiguration =
  { "EndpointType" : Nothing
  , "CertificateName" : Nothing
  , "CertificateArn" : Nothing
  }