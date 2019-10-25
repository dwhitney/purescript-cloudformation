module CloudFormation.AWS.IoTAnalytics.Channel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::IoTAnalytics::Channel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html
-- |
-- | - `ChannelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelname
-- | - `ChannelStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelstorage
-- | - `RetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-retentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-tags
newtype Channel = Channel
  { "ChannelName" :: Maybe (Value String)
  , "ChannelStorage" :: Maybe (Value ChannelStorage)
  , "RetentionPeriod" :: Maybe (Value RetentionPeriod)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeChannel :: Newtype Channel _
derive newtype instance writeChannel :: WriteForeign Channel
instance resourceChannel :: Resource Channel where type_ _ = "AWS::IoTAnalytics::Channel"

channel :: Channel
channel = Channel
  { "ChannelName" : Nothing
  , "ChannelStorage" : Nothing
  , "RetentionPeriod" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::IoTAnalytics::Channel.ServiceManagedS3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-servicemanageds3.html
-- |

type ServiceManagedS3 =
  { 
  }

serviceManagedS3 :: ServiceManagedS3
serviceManagedS3 = {}

-- | `AWS::IoTAnalytics::Channel.RetentionPeriod`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html
-- |
-- | - `NumberOfDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-numberofdays
-- | - `Unlimited`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-unlimited
type RetentionPeriod =
  { "NumberOfDays" :: Maybe (Value Int)
  , "Unlimited" :: Maybe (Value Boolean)
  }

retentionPeriod :: RetentionPeriod
retentionPeriod =
  { "NumberOfDays" : Nothing
  , "Unlimited" : Nothing
  }

-- | `AWS::IoTAnalytics::Channel.CustomerManagedS3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-bucket
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-rolearn
-- | - `KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-keyprefix
type CustomerManagedS3 =
  { "Bucket" :: Value String
  , "RoleArn" :: Value String
  , "KeyPrefix" :: Maybe (Value String)
  }

customerManagedS3 :: { "Bucket" :: Value String, "RoleArn" :: Value String } -> CustomerManagedS3
customerManagedS3 required =
  (merge required
    { "KeyPrefix" : Nothing
    })

-- | `AWS::IoTAnalytics::Channel.ChannelStorage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html
-- |
-- | - `CustomerManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-customermanageds3
-- | - `ServiceManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-servicemanageds3
type ChannelStorage =
  { "CustomerManagedS3" :: Maybe (Value CustomerManagedS3)
  , "ServiceManagedS3" :: Maybe (Value ServiceManagedS3)
  }

channelStorage :: ChannelStorage
channelStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }