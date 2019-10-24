module AWS.EC2.ClientVpnEndpoint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Tag


type ClientVpnEndpoint =
  { "ClientCidrBlock" :: String
  , "ConnectionLogOptions" :: ConnectionLogOptions
  , "AuthenticationOptions" :: Array ClientAuthenticationRequest
  , "ServerCertificateArn" :: String
  , "SplitTunnel" :: Maybe Boolean
  , "Description" :: Maybe String
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "DnsServers" :: Maybe (Array String)
  , "TransportProtocol" :: Maybe String
  }

clientVpnEndpoint :: { "ClientCidrBlock" :: String, "ConnectionLogOptions" :: ConnectionLogOptions, "AuthenticationOptions" :: Array ClientAuthenticationRequest, "ServerCertificateArn" :: String } -> ClientVpnEndpoint
clientVpnEndpoint required =
  merge required
    { "SplitTunnel" : Nothing
    , "Description" : Nothing
    , "TagSpecifications" : Nothing
    , "DnsServers" : Nothing
    , "TransportProtocol" : Nothing
    }

type ClientAuthenticationRequest =
  { "Type" :: String
  , "MutualAuthentication" :: Maybe CertificateAuthenticationRequest
  , "ActiveDirectory" :: Maybe DirectoryServiceAuthenticationRequest
  }

clientAuthenticationRequest :: { "Type" :: String } -> ClientAuthenticationRequest
clientAuthenticationRequest required =
  merge required
    { "MutualAuthentication" : Nothing
    , "ActiveDirectory" : Nothing
    }

type TagSpecification =
  { "ResourceType" :: String
  , "Tags" :: Array Tag
  }

tagSpecification :: { "ResourceType" :: String, "Tags" :: Array Tag } -> TagSpecification
tagSpecification required =
  required

type DirectoryServiceAuthenticationRequest =
  { "DirectoryId" :: String
  }

directoryServiceAuthenticationRequest :: { "DirectoryId" :: String } -> DirectoryServiceAuthenticationRequest
directoryServiceAuthenticationRequest required =
  required

type CertificateAuthenticationRequest =
  { "ClientRootCertificateChainArn" :: String
  }

certificateAuthenticationRequest :: { "ClientRootCertificateChainArn" :: String } -> CertificateAuthenticationRequest
certificateAuthenticationRequest required =
  required

type ConnectionLogOptions =
  { "Enabled" :: Boolean
  , "CloudwatchLogStream" :: Maybe String
  , "CloudwatchLogGroup" :: Maybe String
  }

connectionLogOptions :: { "Enabled" :: Boolean } -> ConnectionLogOptions
connectionLogOptions required =
  merge required
    { "CloudwatchLogStream" : Nothing
    , "CloudwatchLogGroup" : Nothing
    }