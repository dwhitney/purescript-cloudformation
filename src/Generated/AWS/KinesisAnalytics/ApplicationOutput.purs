module CloudFormation.AWS.KinesisAnalytics.ApplicationOutput where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalytics::ApplicationOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html#cfn-kinesisanalytics-applicationoutput-applicationname
-- | - `Output`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationoutput.html#cfn-kinesisanalytics-applicationoutput-output
newtype ApplicationOutput = ApplicationOutput
  { "ApplicationName" :: Value String
  , "Output" :: Value Output
  }

derive instance newtypeApplicationOutput :: Newtype ApplicationOutput _
derive newtype instance writeApplicationOutput :: WriteForeign ApplicationOutput
instance resourceApplicationOutput :: Resource ApplicationOutput where type_ _ = "AWS::KinesisAnalytics::ApplicationOutput"

applicationOutput :: { "ApplicationName" :: Value String, "Output" :: Value Output } -> ApplicationOutput
applicationOutput required = ApplicationOutput
  required

-- | `AWS::KinesisAnalytics::ApplicationOutput.LambdaOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-lambdaoutput.html#cfn-kinesisanalytics-applicationoutput-lambdaoutput-rolearn
type LambdaOutput =
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

lambdaOutput :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> LambdaOutput
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
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

kinesisStreamsOutput :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> KinesisStreamsOutput
kinesisStreamsOutput required =
  required

-- | `AWS::KinesisAnalytics::ApplicationOutput.DestinationSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html
-- |
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-destinationschema.html#cfn-kinesisanalytics-applicationoutput-destinationschema-recordformattype
type DestinationSchema =
  { "RecordFormatType" :: Maybe (Value String)
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

-- | `AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-rolearn
type KinesisFirehoseOutput =
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

kinesisFirehoseOutput :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> KinesisFirehoseOutput
kinesisFirehoseOutput required =
  required