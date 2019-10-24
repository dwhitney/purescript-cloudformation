module CloudFormation.AWS.ElasticLoadBalancingV2.TargetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::ElasticLoadBalancingV2::TargetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html-- |
-- | - `HealthCheckEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthcheckenabled
-- | - `HealthCheckIntervalSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthcheckintervalseconds
-- | - `HealthCheckPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthcheckpath
-- | - `HealthCheckPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthcheckport
-- | - `HealthCheckProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthcheckprotocol
-- | - `HealthCheckTimeoutSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthchecktimeoutseconds
-- | - `HealthyThresholdCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-healthythresholdcount
-- | - `Matcher`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-matcher
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-name
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-protocol
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-tags
-- | - `TargetGroupAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattributes
-- | - `TargetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-targettype
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-targets
-- | - `UnhealthyThresholdCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-unhealthythresholdcount
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-targetgroup.html#cfn-elasticloadbalancingv2-targetgroup-vpcid
type TargetGroup =
  { "HealthCheckEnabled" :: Maybe Boolean
  , "HealthCheckIntervalSeconds" :: Maybe Int
  , "HealthCheckPath" :: Maybe String
  , "HealthCheckPort" :: Maybe String
  , "HealthCheckProtocol" :: Maybe String
  , "HealthCheckTimeoutSeconds" :: Maybe Int
  , "HealthyThresholdCount" :: Maybe Int
  , "Matcher" :: Maybe Matcher
  , "Name" :: Maybe String
  , "Port" :: Maybe Int
  , "Protocol" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TargetGroupAttributes" :: Maybe (Array TargetGroupAttribute)
  , "TargetType" :: Maybe String
  , "Targets" :: Maybe (Array TargetDescription)
  , "UnhealthyThresholdCount" :: Maybe Int
  , "VpcId" :: Maybe String
  }

targetGroup :: TargetGroup
targetGroup =
  { "HealthCheckEnabled" : Nothing
  , "HealthCheckIntervalSeconds" : Nothing
  , "HealthCheckPath" : Nothing
  , "HealthCheckPort" : Nothing
  , "HealthCheckProtocol" : Nothing
  , "HealthCheckTimeoutSeconds" : Nothing
  , "HealthyThresholdCount" : Nothing
  , "Matcher" : Nothing
  , "Name" : Nothing
  , "Port" : Nothing
  , "Protocol" : Nothing
  , "Tags" : Nothing
  , "TargetGroupAttributes" : Nothing
  , "TargetType" : Nothing
  , "Targets" : Nothing
  , "UnhealthyThresholdCount" : Nothing
  , "VpcId" : Nothing
  }

-- | `AWS::ElasticLoadBalancingV2::TargetGroup.TargetDescription`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-availabilityzone
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-id
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-port
type TargetDescription =
  { "Id" :: String
  , "AvailabilityZone" :: Maybe String
  , "Port" :: Maybe Int
  }

targetDescription :: { "Id" :: String } -> TargetDescription
targetDescription required =
  merge required
    { "AvailabilityZone" : Nothing
    , "Port" : Nothing
    }

-- | `AWS::ElasticLoadBalancingV2::TargetGroup.Matcher`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html-- |
-- | - `HttpCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html#cfn-elasticloadbalancingv2-targetgroup-matcher-httpcode
type Matcher =
  { "HttpCode" :: String
  }

matcher :: { "HttpCode" :: String } -> Matcher
matcher required =
  required

-- | `AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-value
type TargetGroupAttribute =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

targetGroupAttribute :: TargetGroupAttribute
targetGroupAttribute =
  { "Key" : Nothing
  , "Value" : Nothing
  }