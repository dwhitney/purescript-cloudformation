module CloudFormation.AWS.Route53.HostedZone where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Route53::HostedZone`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html-- |
-- | - `HostedZoneConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzoneconfig
-- | - `HostedZoneTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzonetags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-name
-- | - `QueryLoggingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-queryloggingconfig
-- | - `VPCs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-vpcs
type HostedZone =
  { "Name" :: String
  , "HostedZoneConfig" :: Maybe HostedZoneConfig
  , "HostedZoneTags" :: Maybe (Array HostedZoneTag)
  , "QueryLoggingConfig" :: Maybe QueryLoggingConfig
  , "VPCs" :: Maybe (Array VPC)
  }

hostedZone :: { "Name" :: String } -> HostedZone
hostedZone required =
  merge required
    { "HostedZoneConfig" : Nothing
    , "HostedZoneTags" : Nothing
    , "QueryLoggingConfig" : Nothing
    , "VPCs" : Nothing
    }

-- | `AWS::Route53::HostedZone.VPC`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html-- |
-- | - `VPCId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcid
-- | - `VPCRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcregion
type VPC =
  { "VPCId" :: String
  , "VPCRegion" :: String
  }

vpcPC :: { "VPCId" :: String, "VPCRegion" :: String } -> VPC
vpcPC required =
  required

-- | `AWS::Route53::HostedZone.QueryLoggingConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html-- |
-- | - `CloudWatchLogsLogGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html#cfn-route53-hostedzone-queryloggingconfig-cloudwatchlogsloggrouparn
type QueryLoggingConfig =
  { "CloudWatchLogsLogGroupArn" :: String
  }

queryLoggingConfig :: { "CloudWatchLogsLogGroupArn" :: String } -> QueryLoggingConfig
queryLoggingConfig required =
  required

-- | `AWS::Route53::HostedZone.HostedZoneConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html#cfn-route53-hostedzone-hostedzoneconfig-comment
type HostedZoneConfig =
  { "Comment" :: Maybe String
  }

hostedZoneConfig :: HostedZoneConfig
hostedZoneConfig =
  { "Comment" : Nothing
  }

-- | `AWS::Route53::HostedZone.HostedZoneTag`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-value
type HostedZoneTag =
  { "Key" :: String
  , "Value" :: String
  }

hostedZoneTag :: { "Key" :: String, "Value" :: String } -> HostedZoneTag
hostedZoneTag required =
  required