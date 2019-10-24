module CloudFormation.AWS.EC2.NetworkInterfaceAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::NetworkInterfaceAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html
-- |
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-deleteonterm
-- | - `DeviceIndex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-deviceindex
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-instanceid
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html#cfn-ec2-network-interface-attachment-networkinterfaceid
newtype NetworkInterfaceAttachment = NetworkInterfaceAttachment
  { "DeviceIndex" :: String
  , "InstanceId" :: String
  , "NetworkInterfaceId" :: String
  , "DeleteOnTermination" :: Maybe Boolean
  }

derive instance newtypeNetworkInterfaceAttachment :: Newtype NetworkInterfaceAttachment _
instance resourceNetworkInterfaceAttachment :: Resource NetworkInterfaceAttachment where type_ _ = "AWS::EC2::NetworkInterfaceAttachment"

networkInterfaceAttachment :: { "DeviceIndex" :: String, "InstanceId" :: String, "NetworkInterfaceId" :: String } -> NetworkInterfaceAttachment
networkInterfaceAttachment required = NetworkInterfaceAttachment
  (merge required
    { "DeleteOnTermination" : Nothing
    })