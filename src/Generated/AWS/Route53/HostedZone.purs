module CloudFormation.AWS.Route53.HostedZone where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Route53::HostedZone`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html
-- |
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
newtype HostedZone = HostedZone
  { "Name" :: Value String
  , "HostedZoneConfig" :: Maybe (Value HostedZoneConfig)
  , "HostedZoneTags" :: Maybe (Value (Array HostedZoneTag))
  , "QueryLoggingConfig" :: Maybe (Value QueryLoggingConfig)
  , "VPCs" :: Maybe (Value (Array VPC))
  }

derive instance newtypeHostedZone :: Newtype HostedZone _
derive newtype instance writeHostedZone :: WriteForeign HostedZone
instance resourceHostedZone :: Resource HostedZone where type_ _ = "AWS::Route53::HostedZone"

hostedZone :: { "Name" :: Value String } -> HostedZone
hostedZone required = HostedZone
  (merge required
    { "HostedZoneConfig" : Nothing
    , "HostedZoneTags" : Nothing
    , "QueryLoggingConfig" : Nothing
    , "VPCs" : Nothing
    })

-- | `AWS::Route53::HostedZone.VPC`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html
-- |
-- | - `VPCId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcid
-- | - `VPCRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcregion
type VPC =
  { "VPCId" :: Value String
  , "VPCRegion" :: Value String
  }

vpcPC :: { "VPCId" :: Value String, "VPCRegion" :: Value String } -> VPC
vpcPC required =
  required

-- | `AWS::Route53::HostedZone.QueryLoggingConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html
-- |
-- | - `CloudWatchLogsLogGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html#cfn-route53-hostedzone-queryloggingconfig-cloudwatchlogsloggrouparn
type QueryLoggingConfig =
  { "CloudWatchLogsLogGroupArn" :: Value String
  }

queryLoggingConfig :: { "CloudWatchLogsLogGroupArn" :: Value String } -> QueryLoggingConfig
queryLoggingConfig required =
  required

-- | `AWS::Route53::HostedZone.HostedZoneConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html#cfn-route53-hostedzone-hostedzoneconfig-comment
type HostedZoneConfig =
  { "Comment" :: Maybe (Value String)
  }

hostedZoneConfig :: HostedZoneConfig
hostedZoneConfig =
  { "Comment" : Nothing
  }

-- | `AWS::Route53::HostedZone.HostedZoneTag`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-value
type HostedZoneTag =
  { "Key" :: Value String
  , "Value" :: Value String
  }

hostedZoneTag :: { "Key" :: Value String, "Value" :: Value String } -> HostedZoneTag
hostedZoneTag required =
  required