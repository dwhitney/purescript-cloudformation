module CloudFormation.AWS.ManagedBlockchain.Node where 




type Node =
  { "MemberId" :: String
  , "NetworkId" :: String
  , "NodeConfiguration" :: NodeConfiguration
  }

node :: { "MemberId" :: String, "NetworkId" :: String, "NodeConfiguration" :: NodeConfiguration } -> Node
node required =
  required

type NodeConfiguration =
  { "AvailabilityZone" :: String
  , "InstanceType" :: String
  }

nodeConfiguration :: { "AvailabilityZone" :: String, "InstanceType" :: String } -> NodeConfiguration
nodeConfiguration required =
  required