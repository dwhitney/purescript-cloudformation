module CloudFormation.AWS.EC2.NetworkInterfaceAttachment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DeviceIndex" :: Value String
  , "InstanceId" :: Value String
  , "NetworkInterfaceId" :: Value String
  , "DeleteOnTermination" :: Maybe (Value Boolean)
  }

derive instance newtypeNetworkInterfaceAttachment :: Newtype NetworkInterfaceAttachment _
derive newtype instance writeNetworkInterfaceAttachment :: WriteForeign NetworkInterfaceAttachment
instance resourceNetworkInterfaceAttachment :: Resource NetworkInterfaceAttachment where type_ _ = "AWS::EC2::NetworkInterfaceAttachment"

networkInterfaceAttachment :: { "DeviceIndex" :: Value String, "InstanceId" :: Value String, "NetworkInterfaceId" :: Value String } -> NetworkInterfaceAttachment
networkInterfaceAttachment required = NetworkInterfaceAttachment
  (merge required
    { "DeleteOnTermination" : Nothing
    })