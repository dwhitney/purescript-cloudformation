module AWS.EC2.VPCPeeringConnection where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type VPCPeeringConnection =
  { "PeerVpcId" :: String
  , "VpcId" :: String
  , "PeerOwnerId" :: Maybe String
  , "PeerRegion" :: Maybe String
  , "PeerRoleArn" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

vpcpPCPeeringConnection :: { "PeerVpcId" :: String, "VpcId" :: String } -> VPCPeeringConnection
vpcpPCPeeringConnection required =
  merge required
    { "PeerOwnerId" : Nothing
    , "PeerRegion" : Nothing
    , "PeerRoleArn" : Nothing
    , "Tags" : Nothing
    }