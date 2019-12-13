module CloudFormation.AWS.Lambda.EventSourceMapping where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::EventSourceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html
-- |
-- | - `BatchSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize
-- | - `BisectBatchOnFunctionError`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-bisectbatchonfunctionerror
-- | - `DestinationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-destinationconfig
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled
-- | - `EventSourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname
-- | - `MaximumBatchingWindowInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumbatchingwindowinseconds
-- | - `MaximumRecordAgeInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumrecordageinseconds
-- | - `MaximumRetryAttempts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumretryattempts
-- | - `ParallelizationFactor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-parallelizationfactor
-- | - `StartingPosition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition
newtype EventSourceMapping = EventSourceMapping
  { "EventSourceArn" :: Value String
  , "FunctionName" :: Value String
  , "BatchSize" :: Maybe (Value Int)
  , "BisectBatchOnFunctionError" :: Maybe (Value Boolean)
  , "DestinationConfig" :: Maybe (Value DestinationConfig)
  , "Enabled" :: Maybe (Value Boolean)
  , "MaximumBatchingWindowInSeconds" :: Maybe (Value Int)
  , "MaximumRecordAgeInSeconds" :: Maybe (Value Int)
  , "MaximumRetryAttempts" :: Maybe (Value Int)
  , "ParallelizationFactor" :: Maybe (Value Int)
  , "StartingPosition" :: Maybe (Value String)
  }

derive instance newtypeEventSourceMapping :: Newtype EventSourceMapping _
derive newtype instance writeEventSourceMapping :: WriteForeign EventSourceMapping
instance resourceEventSourceMapping :: Resource EventSourceMapping where type_ _ = "AWS::Lambda::EventSourceMapping"

eventSourceMapping :: { "EventSourceArn" :: Value String, "FunctionName" :: Value String } -> EventSourceMapping
eventSourceMapping required = EventSourceMapping
  (merge required
    { "BatchSize" : Nothing
    , "BisectBatchOnFunctionError" : Nothing
    , "DestinationConfig" : Nothing
    , "Enabled" : Nothing
    , "MaximumBatchingWindowInSeconds" : Nothing
    , "MaximumRecordAgeInSeconds" : Nothing
    , "MaximumRetryAttempts" : Nothing
    , "ParallelizationFactor" : Nothing
    , "StartingPosition" : Nothing
    })

-- | `AWS::Lambda::EventSourceMapping.DestinationConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html
-- |
-- | - `OnFailure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html#cfn-lambda-eventsourcemapping-destinationconfig-onfailure
type DestinationConfig =
  { "OnFailure" :: Value OnFailure
  }

destinationConfig :: { "OnFailure" :: Value OnFailure } -> DestinationConfig
destinationConfig required =
  required

-- | `AWS::Lambda::EventSourceMapping.OnFailure`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html
-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html#cfn-lambda-eventsourcemapping-onfailure-destination
type OnFailure =
  { "Destination" :: Value String
  }

onFailure :: { "Destination" :: Value String } -> OnFailure
onFailure required =
  required