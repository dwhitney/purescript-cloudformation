module CloudFormation.AWS.Kinesis.Stream where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::Kinesis::Stream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-name
-- | - `RetentionPeriodHours`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-retentionperiodhours
-- | - `ShardCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-shardcount
-- | - `StreamEncryption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-streamencryption
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-tags
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

-- | `AWS::Kinesis::Stream.StreamEncryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html
-- |
-- | - `EncryptionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-encryptiontype
-- | - `KeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-keyid
type StreamEncryption =
  { "EncryptionType" :: String
  , "KeyId" :: String
  }

streamEncryption :: { "EncryptionType" :: String, "KeyId" :: String } -> StreamEncryption
streamEncryption required =
  required