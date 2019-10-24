module AWS.Kinesis.Stream where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Stream =
  { "ShardCount" :: Int
  , "Name" :: Maybe String
  , "RetentionPeriodHours" :: Maybe Int
  , "StreamEncryption" :: Maybe StreamEncryption
  , "Tags" :: Maybe (Array Tag)
  }

stream :: { "ShardCount" :: Int } -> Stream
stream required =
  merge required
    { "Name" : Nothing
    , "RetentionPeriodHours" : Nothing
    , "StreamEncryption" : Nothing
    , "Tags" : Nothing
    }

type StreamEncryption =
  { "EncryptionType" :: String
  , "KeyId" :: String
  }

streamEncryption :: { "EncryptionType" :: String, "KeyId" :: String } -> StreamEncryption
streamEncryption required =
  required