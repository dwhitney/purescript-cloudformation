module CloudFormation.AWS.EC2.DHCPOptions where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::DHCPOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html-- |
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