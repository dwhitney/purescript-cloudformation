module CloudFormation.AWS.ManagedBlockchain.Node where 




-- | `AWS::ManagedBlockchain::Node`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html
-- |
-- | - `MemberId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-memberid
-- | - `NetworkId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-networkid
-- | - `NodeConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-nodeconfiguration
type Node =
  { "MemberId" :: String
  , "NetworkId" :: String
  , "NodeConfiguration" :: NodeConfiguration
  }

node :: { "MemberId" :: String, "NetworkId" :: String, "NodeConfiguration" :: NodeConfiguration } -> Node
node required =
  required

-- | `AWS::ManagedBlockchain::Node.NodeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html
-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-availabilityzone
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-instancetype
type NodeConfiguration =
  { "AvailabilityZone" :: String
  , "InstanceType" :: String
  }

nodeConfiguration :: { "AvailabilityZone" :: String, "InstanceType" :: String } -> NodeConfiguration
nodeConfiguration required =
  required