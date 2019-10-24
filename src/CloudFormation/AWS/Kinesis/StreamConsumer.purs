module CloudFormation.AWS.Kinesis.StreamConsumer where 




type StreamConsumer =
  { "ConsumerName" :: String
  , "StreamARN" :: String
  }

streamConsumer :: { "ConsumerName" :: String, "StreamARN" :: String } -> StreamConsumer
streamConsumer required =
  required