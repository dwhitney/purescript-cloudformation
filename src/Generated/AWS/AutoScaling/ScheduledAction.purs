module CloudFormation.AWS.AutoScaling.ScheduledAction where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AutoScaling::ScheduledAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html
-- |
-- | - `AutoScalingGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-asgname
-- | - `DesiredCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-desiredcapacity
-- | - `EndTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-endtime
-- | - `MaxSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-maxsize
-- | - `MinSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-minsize
-- | - `Recurrence`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-recurrence
-- | - `StartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html#cfn-as-scheduledaction-starttime
newtype ScheduledAction = ScheduledAction
  { "AutoScalingGroupName" :: Value String
  , "DesiredCapacity" :: Maybe (Value Int)
  , "EndTime" :: Maybe (Value String)
  , "MaxSize" :: Maybe (Value Int)
  , "MinSize" :: Maybe (Value Int)
  , "Recurrence" :: Maybe (Value String)
  , "StartTime" :: Maybe (Value String)
  }

derive instance newtypeScheduledAction :: Newtype ScheduledAction _
derive newtype instance writeScheduledAction :: WriteForeign ScheduledAction
instance resourceScheduledAction :: Resource ScheduledAction where type_ _ = "AWS::AutoScaling::ScheduledAction"

scheduledAction :: { "AutoScalingGroupName" :: Value String } -> ScheduledAction
scheduledAction required = ScheduledAction
  (merge required
    { "DesiredCapacity" : Nothing
    , "EndTime" : Nothing
    , "MaxSize" : Nothing
    , "MinSize" : Nothing
    , "Recurrence" : Nothing
    , "StartTime" : Nothing
    })