module CloudFormation.AWS.ElasticLoadBalancingV2.LoadBalancer where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::ElasticLoadBalancingV2::LoadBalancer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html-- |
-- | - `IpAddressType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-ipaddresstype
-- | - `LoadBalancerAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-name
-- | - `Scheme`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-scheme
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-securitygroups
-- | - `SubnetMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmappings
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnets
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-tags
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-type
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

-- | `AWS::ElasticLoadBalancingV2::LoadBalancer.SubnetMapping`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html-- |
-- | - `AllocationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-allocationid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-subnetid
type SubnetMapping =
  { "AllocationId" :: String
  , "SubnetId" :: String
  }

subnetMapping :: { "AllocationId" :: String, "SubnetId" :: String } -> SubnetMapping
subnetMapping required =
  required

-- | `AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
type LoadBalancerAttribute =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

loadBalancerAttribute :: LoadBalancerAttribute
loadBalancerAttribute =
  { "Key" : Nothing
  , "Value" : Nothing
  }