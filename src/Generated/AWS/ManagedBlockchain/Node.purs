module CloudFormation.AWS.ManagedBlockchain.Node where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ManagedBlockchain::Node`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html
-- |
-- | - `MemberId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-memberid
-- | - `NetworkId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-networkid
-- | - `NodeConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-nodeconfiguration
newtype Node = Node
  { "MemberId" :: Value String
  , "NetworkId" :: Value String
  , "NodeConfiguration" :: Value NodeConfiguration
  }

derive instance newtypeNode :: Newtype Node _
derive newtype instance writeNode :: WriteForeign Node
instance resourceNode :: Resource Node where type_ _ = "AWS::ManagedBlockchain::Node"

node :: { "MemberId" :: Value String, "NetworkId" :: Value String, "NodeConfiguration" :: Value NodeConfiguration } -> Node
node required = Node
  required

-- | `AWS::ManagedBlockchain::Node.NodeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html
-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-availabilityzone
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-instancetype
type NodeConfiguration =
  { "AvailabilityZone" :: Value String
  , "InstanceType" :: Value String
  }

nodeConfiguration :: { "AvailabilityZone" :: Value String, "InstanceType" :: Value String } -> NodeConfiguration
nodeConfiguration required =
  required