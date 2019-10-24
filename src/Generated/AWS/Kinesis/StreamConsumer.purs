module CloudFormation.AWS.Kinesis.StreamConsumer where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Kinesis::StreamConsumer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html
-- |
-- | - `ConsumerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-consumername
-- | - `StreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-streamarn
newtype StreamConsumer = StreamConsumer
  { "ConsumerName" :: String
  , "StreamARN" :: String
  }

derive instance newtypeStreamConsumer :: Newtype StreamConsumer _
instance resourceStreamConsumer :: Resource StreamConsumer where type_ _ = "AWS::Kinesis::StreamConsumer"

streamConsumer :: { "ConsumerName" :: String, "StreamARN" :: String } -> StreamConsumer
streamConsumer required = StreamConsumer
  required