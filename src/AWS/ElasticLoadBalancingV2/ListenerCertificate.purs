module AWS.ElasticLoadBalancingV2.ListenerCertificate where 

import Data.Maybe (Maybe(..))


type ListenerCertificate =
  { "Certificates" :: Array Certificate
  , "ListenerArn" :: String
  }

listenerCertificate :: { "Certificates" :: Array Certificate, "ListenerArn" :: String } -> ListenerCertificate
listenerCertificate required =
  required

type Certificate =
  { "CertificateArn" :: Maybe String
  }

certificate :: Certificate
certificate =
  { "CertificateArn" : Nothing
  }