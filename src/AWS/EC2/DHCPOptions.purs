module AWS.EC2.DHCPOptions where 

import Data.Maybe (Maybe(..))
import Tag


type DHCPOptions =
  { "DomainName" :: Maybe String
  , "DomainNameServers" :: Maybe (Array String)
  , "NetbiosNameServers" :: Maybe (Array String)
  , "NetbiosNodeType" :: Maybe Int
  , "NtpServers" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

dhcpoHCPOptions :: DHCPOptions
dhcpoHCPOptions =
  { "DomainName" : Nothing
  , "DomainNameServers" : Nothing
  , "NetbiosNameServers" : Nothing
  , "NetbiosNodeType" : Nothing
  , "NtpServers" : Nothing
  , "Tags" : Nothing
  }