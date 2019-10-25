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
newtype EventSourceMapping = EventSourceMapping
  { "EventSourceArn" :: Value String
  , "FunctionName" :: Value String
  , "BatchSize" :: Maybe (Value Int)
  , "Enabled" :: Maybe (Value Boolean)
  , "MaximumBatchingWindowInSeconds" :: Maybe (Value Int)
  , "StartingPosition" :: Maybe (Value String)
  }

derive instance newtypeEventSourceMapping :: Newtype EventSourceMapping _
derive newtype instance writeEventSourceMapping :: WriteForeign EventSourceMapping
instance resourceEventSourceMapping :: Resource EventSourceMapping where type_ _ = "AWS::Lambda::EventSourceMapping"

eventSourceMapping :: { "EventSourceArn" :: Value String, "FunctionName" :: Value String } -> EventSourceMapping
eventSourceMapping required = EventSourceMapping
  (merge required
    { "BatchSize" : Nothing
    , "Enabled" : Nothing
    , "MaximumBatchingWindowInSeconds" : Nothing
    , "StartingPosition" : Nothing
    })