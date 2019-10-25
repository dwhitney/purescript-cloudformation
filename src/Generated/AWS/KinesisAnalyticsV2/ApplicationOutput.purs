module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationOutput where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalyticsV2::ApplicationOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-applicationname
-- | - `Output`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-output
newtype ApplicationOutput = ApplicationOutput
  { "ApplicationName" :: Value String
  , "Output" :: Value Output
  }

derive instance newtypeApplicationOutput :: Newtype ApplicationOutput _
derive newtype instance writeApplicationOutput :: WriteForeign ApplicationOutput
instance resourceApplicationOutput :: Resource ApplicationOutput where type_ _ = "AWS::KinesisAnalyticsV2::ApplicationOutput"

applicationOutput :: { "ApplicationName" :: Value String, "Output" :: Value Output } -> ApplicationOutput
applicationOutput required = ApplicationOutput
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.Output`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html
-- |
-- | - `DestinationSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-destinationschema
-- | - `LambdaOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-lambdaoutput
-- | - `KinesisFirehoseOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisfirehoseoutput
-- | - `KinesisStreamsOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisstreamsoutput
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-name
type Output =
  { "DestinationSchema" :: Value DestinationSchema
  , "LambdaOutput" :: Maybe (Value LambdaOutput)
  , "KinesisFirehoseOutput" :: Maybe (Value KinesisFirehoseOutput)
  , "KinesisStreamsOutput" :: Maybe (Value KinesisStreamsOutput)
  , "Name" :: Maybe (Value String)
  }

output :: { "DestinationSchema" :: Value DestinationSchema } -> Output
output required =
  (merge required
    { "LambdaOutput" : Nothing
    , "KinesisFirehoseOutput" : Nothing
    , "KinesisStreamsOutput" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.DestinationSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html
-- |
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html#cfn-kinesisanalyticsv2-applicationoutput-destinationschema-recordformattype
type DestinationSchema =
  { "RecordFormatType" :: Maybe (Value String)
  }

destinationSchema :: DestinationSchema
destinationSchema =
  { "RecordFormatType" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisStreamsOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput-resourcearn
type KinesisStreamsOutput =
  { "ResourceARN" :: Value String
  }

kinesisStreamsOutput :: { "ResourceARN" :: Value String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisFirehoseOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput-resourcearn
type KinesisFirehoseOutput =
  { "ResourceARN" :: Value String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: Value String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.LambdaOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html#cfn-kinesisanalyticsv2-applicationoutput-lambdaoutput-resourcearn
type LambdaOutput =
  { "ResourceARN" :: Value String
  }

lambdaOutput :: { "ResourceARN" :: Value String } -> LambdaOutput
lambdaOutput required =
  required