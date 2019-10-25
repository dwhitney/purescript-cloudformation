module CloudFormation.AWS.Config.DeliveryChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::DeliveryChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html
-- |
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
newtype DeliveryChannel = DeliveryChannel
  { "S3BucketName" :: Value String
  , "ConfigSnapshotDeliveryProperties" :: Maybe (Value ConfigSnapshotDeliveryProperties)
  , "Name" :: Maybe (Value String)
  , "S3KeyPrefix" :: Maybe (Value String)
  , "SnsTopicARN" :: Maybe (Value String)
  }

derive instance newtypeDeliveryChannel :: Newtype DeliveryChannel _
derive newtype instance writeDeliveryChannel :: WriteForeign DeliveryChannel
instance resourceDeliveryChannel :: Resource DeliveryChannel where type_ _ = "AWS::Config::DeliveryChannel"

deliveryChannel :: { "S3BucketName" :: Value String } -> DeliveryChannel
deliveryChannel required = DeliveryChannel
  (merge required
    { "ConfigSnapshotDeliveryProperties" : Nothing
    , "Name" : Nothing
    , "S3KeyPrefix" : Nothing
    , "SnsTopicARN" : Nothing
    })

-- | `AWS::Config::DeliveryChannel.ConfigSnapshotDeliveryProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html
-- |
-- | - `DeliveryFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties-deliveryfrequency
type ConfigSnapshotDeliveryProperties =
  { "DeliveryFrequency" :: Maybe (Value String)
  }

configSnapshotDeliveryProperties :: ConfigSnapshotDeliveryProperties
configSnapshotDeliveryProperties =
  { "DeliveryFrequency" : Nothing
  }