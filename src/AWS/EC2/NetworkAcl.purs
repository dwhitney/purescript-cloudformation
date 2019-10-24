module AWS.EC2.NetworkAcl where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type NetworkAcl =
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

networkAcl :: { "VpcId" :: String } -> NetworkAcl
networkAcl required =
  merge required
    { "Tags" : Nothing
    }