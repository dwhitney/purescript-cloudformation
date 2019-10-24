module AWS.KinesisAnalytics.ApplicationOutput where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApplicationOutput =
  { "ApplicationName" :: String
  , "Output" :: Output
  }

applicationOutput :: { "ApplicationName" :: String, "Output" :: Output } -> ApplicationOutput
applicationOutput required =
  required

type LambdaOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

lambdaOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> LambdaOutput
lambdaOutput required =
  required

type KinesisStreamsOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamsOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

type DestinationSchema =
  { "RecordFormatType" :: Maybe String
  }

destinationSchema :: DestinationSchema
destinationSchema =
  { "RecordFormatType" : Nothing
  }

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

type KinesisFirehoseOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required