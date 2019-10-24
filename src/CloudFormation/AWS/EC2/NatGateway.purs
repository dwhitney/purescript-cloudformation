module CloudFormation.AWS.EC2.NatGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type NatGateway =
  { "AllocationId" :: String
  , "SubnetId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

natGateway :: { "AllocationId" :: String, "SubnetId" :: String } -> NatGateway
natGateway required =
  merge required
    { "Tags" : Nothing
    }