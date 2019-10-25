module CloudFormation.AWS.ElasticLoadBalancingV2.LoadBalancer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElasticLoadBalancingV2::LoadBalancer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html
-- |
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
newtype LoadBalancer = LoadBalancer
  { "IpAddressType" :: Maybe (Value String)
  , "LoadBalancerAttributes" :: Maybe (Value (Array LoadBalancerAttribute))
  , "Name" :: Maybe (Value String)
  , "Scheme" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "SubnetMappings" :: Maybe (Value (Array SubnetMapping))
  , "Subnets" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "Type" :: Maybe (Value String)
  }

derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive newtype instance writeLoadBalancer :: WriteForeign LoadBalancer
instance resourceLoadBalancer :: Resource LoadBalancer where type_ _ = "AWS::ElasticLoadBalancingV2::LoadBalancer"

loadBalancer :: LoadBalancer
loadBalancer = LoadBalancer
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

-- | `AWS::ElasticLoadBalancingV2::LoadBalancer.SubnetMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html
-- |
-- | - `AllocationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-allocationid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-subnetid
type SubnetMapping =
  { "AllocationId" :: Value String
  , "SubnetId" :: Value String
  }

subnetMapping :: { "AllocationId" :: Value String, "SubnetId" :: Value String } -> SubnetMapping
subnetMapping required =
  required

-- | `AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
type LoadBalancerAttribute =
  { "Key" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  }

loadBalancerAttribute :: LoadBalancerAttribute
loadBalancerAttribute =
  { "Key" : Nothing
  , "Value" : Nothing
  }