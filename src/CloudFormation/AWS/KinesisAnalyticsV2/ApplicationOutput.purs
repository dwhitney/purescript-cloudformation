module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationOutput where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalyticsV2::ApplicationOutput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-applicationname
-- | - `Output`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-output
type ApplicationOutput =
  { "ApplicationName" :: String
  , "Output" :: Output
  }

applicationOutput :: { "ApplicationName" :: String, "Output" :: Output } -> ApplicationOutput
applicationOutput required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.Output`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html-- |
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

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.DestinationSchema`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html-- |
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-destinationschema.html#cfn-kinesisanalyticsv2-applicationoutput-destinationschema-recordformattype
type DestinationSchema =
  { "RecordFormatType" :: Maybe String
  }

destinationSchema :: DestinationSchema
destinationSchema =
  { "RecordFormatType" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisStreamsOutput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput-resourcearn
type KinesisStreamsOutput =
  { "ResourceARN" :: String
  }

kinesisStreamsOutput :: { "ResourceARN" :: String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisFirehoseOutput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisfirehoseoutput-resourcearn
type KinesisFirehoseOutput =
  { "ResourceARN" :: String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationOutput.LambdaOutput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-lambdaoutput.html#cfn-kinesisanalyticsv2-applicationoutput-lambdaoutput-resourcearn
type LambdaOutput =
  { "ResourceARN" :: String
  }

lambdaOutput :: { "ResourceARN" :: String } -> LambdaOutput
lambdaOutput required =
  required