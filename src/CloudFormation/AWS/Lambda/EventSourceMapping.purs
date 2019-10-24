module CloudFormation.AWS.Lambda.EventSourceMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Lambda::EventSourceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html
-- |
-- | - `BatchSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled
-- | - `EventSourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname
-- | - `MaximumBatchingWindowInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumbatchingwindowinseconds
-- | - `StartingPosition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition
type EventSourceMapping =
  { "EventSourceArn" :: String
  , "FunctionName" :: String
  , "BatchSize" :: Maybe Int
  , "Enabled" :: Maybe Boolean
  , "MaximumBatchingWindowInSeconds" :: Maybe Int
  , "StartingPosition" :: Maybe String
  }

eventSourceMapping :: { "EventSourceArn" :: String, "FunctionName" :: String } -> EventSourceMapping
eventSourceMapping required =
  merge required
    { "BatchSize" : Nothing
    , "Enabled" : Nothing
    , "MaximumBatchingWindowInSeconds" : Nothing
    , "StartingPosition" : Nothing
    }