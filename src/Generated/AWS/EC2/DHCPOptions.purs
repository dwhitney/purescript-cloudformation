module CloudFormation.AWS.EC2.DHCPOptions where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DomainName" :: Maybe (Value String)
  , "DomainNameServers" :: Maybe (Value (Array String))
  , "NetbiosNameServers" :: Maybe (Value (Array String))
  , "NetbiosNodeType" :: Maybe (Value Int)
  , "NtpServers" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDHCPOptions :: Newtype DHCPOptions _
derive newtype instance writeDHCPOptions :: WriteForeign DHCPOptions
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