module AWS.ElasticLoadBalancingV2.LoadBalancer where 

import Data.Maybe (Maybe(..))
import Tag


type LoadBalancer =
  { "IpAddressType" :: Maybe String
  , "LoadBalancerAttributes" :: Maybe (Array LoadBalancerAttribute)
  , "Name" :: Maybe String
  , "Scheme" :: Maybe String
  , "SecurityGroups" :: Maybe (Array String)
  , "SubnetMappings" :: Maybe (Array SubnetMapping)
  , "Subnets" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  , "Type" :: Maybe String
  }

loadBalancer :: LoadBalancer
loadBalancer =
  { "IpAddressType" : Nothing
  , "LoadBalancerAttributes" : Nothing
  , "Name" : Nothing
  , "Scheme" : Nothing
  , "SecurityGroups" : Nothing
  , "SubnetMappings" : Nothing
  , "Subnets" : Nothing
  , "Tags" : Nothing
  , "Type" : Nothing
  }

type SubnetMapping =
  { "AllocationId" :: String
  , "SubnetId" :: String
  }

subnetMapping :: { "AllocationId" :: String, "SubnetId" :: String } -> SubnetMapping
subnetMapping required =
  required

type LoadBalancerAttribute =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

loadBalancerAttribute :: LoadBalancerAttribute
loadBalancerAttribute =
  { "Key" : Nothing
  , "Value" : Nothing
  }