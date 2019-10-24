module AWS.EC2.VPCEndpointService where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VPCEndpointService =
  { "NetworkLoadBalancerArns" :: Array String
  , "AcceptanceRequired" :: Maybe Boolean
  }

vpcePCEndpointService :: { "NetworkLoadBalancerArns" :: Array String } -> VPCEndpointService
vpcePCEndpointService required =
  merge required
    { "AcceptanceRequired" : Nothing
    }