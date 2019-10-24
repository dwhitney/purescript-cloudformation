module CloudFormation.AWS.EC2.SecurityGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type SecurityGroup =
  { "GroupDescription" :: String
  , "GroupName" :: Maybe String
  , "SecurityGroupEgress" :: Maybe (Array Egress)
  , "SecurityGroupIngress" :: Maybe (Array Ingress)
  , "Tags" :: Maybe (Array Tag)
  , "VpcId" :: Maybe String
  }

securityGroup :: { "GroupDescription" :: String } -> SecurityGroup
securityGroup required =
  merge required
    { "GroupName" : Nothing
    , "SecurityGroupEgress" : Nothing
    , "SecurityGroupIngress" : Nothing
    , "Tags" : Nothing
    , "VpcId" : Nothing
    }

type Ingress =
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "FromPort" :: Maybe Int
  , "SourcePrefixListId" :: Maybe String
  , "SourceSecurityGroupId" :: Maybe String
  , "SourceSecurityGroupName" :: Maybe String
  , "SourceSecurityGroupOwnerId" :: Maybe String
  , "ToPort" :: Maybe Int
  }

ingress :: { "IpProtocol" :: String } -> Ingress
ingress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "FromPort" : Nothing
    , "SourcePrefixListId" : Nothing
    , "SourceSecurityGroupId" : Nothing
    , "SourceSecurityGroupName" : Nothing
    , "SourceSecurityGroupOwnerId" : Nothing
    , "ToPort" : Nothing
    }

type Egress =
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "DestinationPrefixListId" :: Maybe String
  , "DestinationSecurityGroupId" :: Maybe String
  , "FromPort" :: Maybe Int
  , "ToPort" :: Maybe Int
  }

egress :: { "IpProtocol" :: String } -> Egress
egress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "DestinationPrefixListId" : Nothing
    , "DestinationSecurityGroupId" : Nothing
    , "FromPort" : Nothing
    , "ToPort" : Nothing
    }