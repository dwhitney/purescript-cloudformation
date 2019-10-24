module AWS.SSM.ResourceDataSync where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ResourceDataSync =
  { "BucketName" :: String
  , "BucketRegion" :: String
  , "SyncFormat" :: String
  , "SyncName" :: String
  , "KMSKeyArn" :: Maybe String
  , "BucketPrefix" :: Maybe String
  }

resourceDataSync :: { "BucketName" :: String, "BucketRegion" :: String, "SyncFormat" :: String, "SyncName" :: String } -> ResourceDataSync
resourceDataSync required =
  merge required
    { "KMSKeyArn" : Nothing
    , "BucketPrefix" : Nothing
    }