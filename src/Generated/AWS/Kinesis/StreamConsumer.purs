module CloudFormation.AWS.Kinesis.StreamConsumer where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Kinesis::StreamConsumer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html
-- |
-- | - `ConsumerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-consumername
-- | - `StreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-streamarn
newtype StreamConsumer = StreamConsumer
  { "ConsumerName" :: Value String
  , "StreamARN" :: Value String
  }

derive instance newtypeStreamConsumer :: Newtype StreamConsumer _
derive newtype instance writeStreamConsumer :: WriteForeign StreamConsumer
instance resourceStreamConsumer :: Resource StreamConsumer where type_ _ = "AWS::Kinesis::StreamConsumer"

streamConsumer :: { "ConsumerName" :: Value String, "StreamARN" :: Value String } -> StreamConsumer
streamConsumer required = StreamConsumer
  required