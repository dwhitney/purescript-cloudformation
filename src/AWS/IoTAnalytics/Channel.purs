module AWS.IoTAnalytics.Channel where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


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

type ServiceManagedS3 =
  { 
  }

serviceManagedS3 :: ServiceManagedS3
serviceManagedS3 = {}

type RetentionPeriod =
  { "NumberOfDays" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

retentionPeriod :: RetentionPeriod
retentionPeriod =
  { "NumberOfDays" : Nothing
  , "Unlimited" : Nothing
  }

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

type ChannelStorage =
  { "CustomerManagedS3" :: Maybe CustomerManagedS3
  , "ServiceManagedS3" :: Maybe ServiceManagedS3
  }

channelStorage :: ChannelStorage
channelStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }