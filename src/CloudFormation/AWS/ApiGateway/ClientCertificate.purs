module CloudFormation.AWS.ApiGateway.ClientCertificate where 

import Data.Maybe (Maybe(..))


type ClientCertificate =
  { "Description" :: Maybe String
  }

clientCertificate :: ClientCertificate
clientCertificate =
  { "Description" : Nothing
  }