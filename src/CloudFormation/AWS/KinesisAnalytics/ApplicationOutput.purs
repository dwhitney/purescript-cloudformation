module CloudFormation.AWS.KinesisAnalytics.ApplicationOutput where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalytics::ApplicationOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html#cfn-kinesisanalytics-applicationoutput-applicationname
-- | - `Output`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html#cfn-kinesisanalytics-applicationoutput-output
type ApplicationOutput =
  { "ApplicationName" :: String
  , "Output" :: Output
  }

applicationOutput :: { "ApplicationName" :: String, "Output" :: Output } -> ApplicationOutput
applicationOutput required =
  required

-- | `AWS::KinesisAnalytics::ApplicationOutput.LambdaOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-rolearn
type LambdaOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

lambdaOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> LambdaOutput
lambdaOutput required =
  required

-- | `AWS::KinesisAnalytics::ApplicationOutput.KinesisStreamsOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisstreamsoutput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisstreamsoutput-rolearn
type KinesisStreamsOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamsOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

-- | `AWS::KinesisAnalytics::ApplicationOutput.DestinationSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html
-- |
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html#cfn-kinesisanalytics-applicationoutput-destinationschema-recordformattype
type DestinationSchema =
  { "RecordFormatType" :: Maybe String
  }

destinationSchema :: DestinationSchema
destinationSchema =
  { "RecordFormatType" : Nothing
  }

-- | `AWS::KinesisAnalytics::ApplicationOutput.Output`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html
-- |
-- | - `DestinationSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-destinationschema
-- | - `LambdaOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-lambdaoutput
-- | - `KinesisFirehoseOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisfirehoseoutput
-- | - `KinesisStreamsOutput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisstreamsoutput
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-name
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

-- | `AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-rolearn
type KinesisFirehoseOutput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required