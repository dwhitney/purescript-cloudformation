module CloudFormation.AWS.EC2.DHCPOptions where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::DHCPOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-domainname
-- | - `DomainNameServers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-domainnameservers
-- | - `NetbiosNameServers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnameservers
-- | - `NetbiosNodeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-netbiosnodetype
-- | - `NtpServers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-ntpservers
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html#cfn-ec2-dhcpoptions-tags
newtype DHCPOptions = DHCPOptions
  { "DomainName" :: Maybe String
  , "DomainNameServers" :: Maybe (Array String)
  , "NetbiosNameServers" :: Maybe (Array String)
  , "NetbiosNodeType" :: Maybe Int
  , "NtpServers" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDHCPOptions :: Newtype DHCPOptions _
instance resourceDHCPOptions :: Resource DHCPOptions where type_ _ = "AWS::EC2::DHCPOptions"

dhcpoHCPOptions :: DHCPOptions
dhcpoHCPOptions = DHCPOptions
  { "DomainName" : Nothing
  , "DomainNameServers" : Nothing
  , "NetbiosNameServers" : Nothing
  , "NetbiosNodeType" : Nothing
  , "NtpServers" : Nothing
  , "Tags" : Nothing
  }