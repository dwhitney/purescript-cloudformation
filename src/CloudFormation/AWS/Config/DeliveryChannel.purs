module CloudFormation.AWS.Config.DeliveryChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type ConfigSnapshotDeliveryProperties =
  { "DeliveryFrequency" :: Maybe String
  }

configSnapshotDeliveryProperties :: ConfigSnapshotDeliveryProperties
configSnapshotDeliveryProperties =
  { "DeliveryFrequency" : Nothing
  }