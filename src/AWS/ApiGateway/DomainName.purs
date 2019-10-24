module AWS.ApiGateway.DomainName where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DomainName =
  { "DomainName" :: String
  , "CertificateArn" :: Maybe String
  , "EndpointConfiguration" :: Maybe EndpointConfiguration
  , "RegionalCertificateArn" :: Maybe String
  }

domainName :: { "DomainName" :: String } -> DomainName
domainName required =
  merge required
    { "CertificateArn" : Nothing
    , "EndpointConfiguration" : Nothing
    , "RegionalCertificateArn" : Nothing
    }

type EndpointConfiguration =
  { "Types" :: Maybe (Array String)
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }