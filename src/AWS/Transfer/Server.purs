module AWS.Transfer.Server where 

import Data.Maybe (Maybe(..))
import Tag


type Server =
  { "LoggingRole" :: Maybe String
  , "IdentityProviderDetails" :: Maybe IdentityProviderDetails
  , "EndpointType" :: Maybe String
  , "EndpointDetails" :: Maybe EndpointDetails
  , "IdentityProviderType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

server :: Server
server =
  { "LoggingRole" : Nothing
  , "IdentityProviderDetails" : Nothing
  , "EndpointType" : Nothing
  , "EndpointDetails" : Nothing
  , "IdentityProviderType" : Nothing
  , "Tags" : Nothing
  }

type EndpointDetails =
  { "VpcEndpointId" :: String
  }

endpointDetails :: { "VpcEndpointId" :: String } -> EndpointDetails
endpointDetails required =
  required

type IdentityProviderDetails =
  { "InvocationRole" :: String
  , "Url" :: String
  }

identityProviderDetails :: { "InvocationRole" :: String, "Url" :: String } -> IdentityProviderDetails
identityProviderDetails required =
  required