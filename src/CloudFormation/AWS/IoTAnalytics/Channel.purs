module CloudFormation.AWS.IoTAnalytics.Channel where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::IoTAnalytics::Channel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html-- |
-- | - `ChannelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelname
-- | - `ChannelStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelstorage
-- | - `RetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-retentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-tags
type Channel =
  { "ChannelName" :: Maybe String
  , "ChannelStorage" :: Maybe ChannelStorage
  , "RetentionPeriod" :: Maybe RetentionPeriod
  , "Tags" :: Maybe (Array Tag)
  }

channel :: Channel
channel =
  { "ChannelName" : Nothing
  , "ChannelStorage" : Nothing
  , "RetentionPeriod" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::IoTAnalytics::Channel.ServiceManagedS3`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-servicemanageds3.html-- |

type ServiceManagedS3 =
  { 
  }

serviceManagedS3 :: ServiceManagedS3
serviceManagedS3 = {}

-- | `AWS::IoTAnalytics::Channel.RetentionPeriod`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html-- |
-- | - `NumberOfDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-numberofdays
-- | - `Unlimited`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-unlimited
type RetentionPeriod =
  { "NumberOfDays" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

retentionPeriod :: RetentionPeriod
retentionPeriod =
  { "NumberOfDays" : Nothing
  , "Unlimited" : Nothing
  }

-- | `AWS::IoTAnalytics::Channel.CustomerManagedS3`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-bucket
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-rolearn
-- | - `KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-keyprefix
type CustomerManagedS3 =
  { "Bucket" :: String
  , "RoleArn" :: String
  , "KeyPrefix" :: Maybe String
  }

customerManagedS3 :: { "Bucket" :: String, "RoleArn" :: String } -> CustomerManagedS3
customerManagedS3 required =
  merge required
    { "KeyPrefix" : Nothing
    }

-- | `AWS::IoTAnalytics::Channel.ChannelStorage`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html-- |
-- | - `CustomerManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-customermanageds3
-- | - `ServiceManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-servicemanageds3
type ChannelStorage =
  { "CustomerManagedS3" :: Maybe CustomerManagedS3
  , "ServiceManagedS3" :: Maybe ServiceManagedS3
  }

channelStorage :: ChannelStorage
channelStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }