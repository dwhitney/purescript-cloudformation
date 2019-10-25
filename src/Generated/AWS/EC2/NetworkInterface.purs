module CloudFormation.AWS.EC2.NetworkInterface where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::NetworkInterface`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-description
-- | - `GroupSet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-groupset
-- | - `InterfaceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-ec2-networkinterface-interfacetype
-- | - `Ipv6AddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-ec2-networkinterface-ipv6addresscount
-- | - `Ipv6Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-ec2-networkinterface-ipv6addresses
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-privateipaddress
-- | - `PrivateIpAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-privateipaddresses
-- | - `SecondaryPrivateIpAddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-secondaryprivateipcount
-- | - `SourceDestCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-sourcedestcheck
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-subnetid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-tags
newtype NetworkInterface = NetworkInterface
  { "SubnetId" :: Value String
  , "Description" :: Maybe (Value String)
  , "GroupSet" :: Maybe (Value (Array String))
  , "InterfaceType" :: Maybe (Value String)
  , "Ipv6AddressCount" :: Maybe (Value Int)
  , "Ipv6Addresses" :: Maybe (Value InstanceIpv6Address)
  , "PrivateIpAddress" :: Maybe (Value String)
  , "PrivateIpAddresses" :: Maybe (Value (Array PrivateIpAddressSpecification))
  , "SecondaryPrivateIpAddressCount" :: Maybe (Value Int)
  , "SourceDestCheck" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive newtype instance writeNetworkInterface :: WriteForeign NetworkInterface
instance resourceNetworkInterface :: Resource NetworkInterface where type_ _ = "AWS::EC2::NetworkInterface"

networkInterface :: { "SubnetId" :: Value String } -> NetworkInterface
networkInterface required = NetworkInterface
  (merge required
    { "Description" : Nothing
    , "GroupSet" : Nothing
    , "InterfaceType" : Nothing
    , "Ipv6AddressCount" : Nothing
    , "Ipv6Addresses" : Nothing
    , "PrivateIpAddress" : Nothing
    , "PrivateIpAddresses" : Nothing
    , "SecondaryPrivateIpAddressCount" : Nothing
    , "SourceDestCheck" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::EC2::NetworkInterface.PrivateIpAddressSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html
-- |
-- | - `Primary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress
type PrivateIpAddressSpecification =
  { "Primary" :: Value Boolean
  , "PrivateIpAddress" :: Value String
  }

privateIpAddressSpecification :: { "Primary" :: Value Boolean, "PrivateIpAddress" :: Value String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  required

-- | `AWS::EC2::NetworkInterface.InstanceIpv6Address`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-instanceipv6address.html
-- |
-- | - `Ipv6Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-instanceipv6address.html#cfn-ec2-networkinterface-instanceipv6address-ipv6address
type InstanceIpv6Address =
  { "Ipv6Address" :: Value String
  }

instanceIpv6Address :: { "Ipv6Address" :: Value String } -> InstanceIpv6Address
instanceIpv6Address required =
  required