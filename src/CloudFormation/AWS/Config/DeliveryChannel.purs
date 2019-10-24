module CloudFormation.AWS.Config.DeliveryChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Config::DeliveryChannel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html-- |
-- | - `ConfigSnapshotDeliveryProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-name
-- | - `S3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-s3bucketname
-- | - `S3KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-s3keyprefix
-- | - `SnsTopicARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-snstopicarn
type DeliveryChannel =
  { "S3BucketName" :: String
  , "ConfigSnapshotDeliveryProperties" :: Maybe ConfigSnapshotDeliveryProperties
  , "Name" :: Maybe String
  , "S3KeyPrefix" :: Maybe String
  , "SnsTopicARN" :: Maybe String
  }

deliveryChannel :: { "S3BucketName" :: String } -> DeliveryChannel
deliveryChannel required =
  merge required
    { "ConfigSnapshotDeliveryProperties" : Nothing
    , "Name" : Nothing
    , "S3KeyPrefix" : Nothing
    , "SnsTopicARN" : Nothing
    }

-- | `AWS::Config::DeliveryChannel.ConfigSnapshotDeliveryProperties`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html-- |
-- | - `DeliveryFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties-deliveryfrequency
type ConfigSnapshotDeliveryProperties =
  { "DeliveryFrequency" :: Maybe String
  }

configSnapshotDeliveryProperties :: ConfigSnapshotDeliveryProperties
configSnapshotDeliveryProperties =
  { "DeliveryFrequency" : Nothing
  }