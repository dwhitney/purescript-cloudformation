module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationOutput where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApplicationOutput =
  { "ApplicationName" :: String
  , "Output" :: Output
  }

applicationOutput :: { "ApplicationName" :: String, "Output" :: Output } -> ApplicationOutput
applicationOutput required =
  required

type Output =
  { "DestinationSchema" :: DestinationSchema
  , "LambdaOutput" :: Maybe LambdaOutput
  , "KinesisFirehoseOutput" :: Maybe KinesisFirehoseOutput
  , "KinesisStreamsOutput" :: Maybe KinesisStreamsOutput
  , "Name" :: Maybe String
  }

output :: { "DestinationSchema" :: DestinationSchema } -> Output
output required =
  merge required
    { "LambdaOutput" : Nothing
    , "KinesisFirehoseOutput" : Nothing
    , "KinesisStreamsOutput" : Nothing
    , "Name" : Nothing
    }

type DestinationSchema =
  { "RecordFormatType" :: Maybe String
  }

destinationSchema :: DestinationSchema
destinationSchema =
  { "RecordFormatType" : Nothing
  }

type KinesisStreamsOutput =
  { "ResourceARN" :: String
  }

kinesisStreamsOutput :: { "ResourceARN" :: String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

type KinesisFirehoseOutput =
  { "ResourceARN" :: String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required

type LambdaOutput =
  { "ResourceARN" :: String
  }

lambdaOutput :: { "ResourceARN" :: String } -> LambdaOutput
lambdaOutput required =
  required