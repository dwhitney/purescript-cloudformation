module CloudFormation.AWS.EC2.SecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SecurityGroupIngress =
  { "IpProtocol" :: String
  , "CidrIp" :: Maybe String
  , "CidrIpv6" :: Maybe String
  , "Description" :: Maybe String
  , "FromPort" :: Maybe Int
  , "GroupId" :: Maybe String
  , "GroupName" :: Maybe String
  , "SourcePrefixListId" :: Maybe String
  , "SourceSecurityGroupId" :: Maybe String
  , "SourceSecurityGroupName" :: Maybe String
  , "SourceSecurityGroupOwnerId" :: Maybe String
  , "ToPort" :: Maybe Int
  }

securityGroupIngress :: { "IpProtocol" :: String } -> SecurityGroupIngress
securityGroupIngress required =
  merge required
    { "CidrIp" : Nothing
    , "CidrIpv6" : Nothing
    , "Description" : Nothing
    , "FromPort" : Nothing
    , "GroupId" : Nothing
    , "GroupName" : Nothing
    , "SourcePrefixListId" : Nothing
    , "SourceSecurityGroupId" : Nothing
    , "SourceSecurityGroupName" : Nothing
    , "SourceSecurityGroupOwnerId" : Nothing
    , "ToPort" : Nothing
    }