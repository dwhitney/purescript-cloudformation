module AWS.EC2.SecurityGroupEgress where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SecurityGroupEgress =
  { "GroupId" :: String
  , "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "DestinationPrefixListId" :: Maybe String
  , "DestinationSecurityGroupId" :: Maybe String
  , "FromPort" :: Maybe Int
  , "ToPort" :: Maybe Int
  }

securityGroupEgress :: { "GroupId" :: String, "IpProtocol" :: String } -> SecurityGroupEgress
securityGroupEgress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "DestinationPrefixListId" : Nothing
    , "DestinationSecurityGroupId" : Nothing
    , "FromPort" : Nothing
    , "ToPort" : Nothing
    }