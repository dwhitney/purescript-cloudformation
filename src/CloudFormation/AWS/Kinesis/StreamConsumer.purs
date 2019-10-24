module CloudFormation.AWS.Kinesis.StreamConsumer where 




-- | `AWS::Kinesis::StreamConsumer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html-- |
-- | - `ConsumerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-consumername
-- | - `StreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-streamarn
type StreamConsumer =
  { "ConsumerName" :: String
  , "StreamARN" :: String
  }

streamConsumer :: { "ConsumerName" :: String, "StreamARN" :: String } -> StreamConsumer
streamConsumer required =
  required