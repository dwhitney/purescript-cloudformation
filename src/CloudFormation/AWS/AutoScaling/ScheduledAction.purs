module CloudFormation.AWS.AutoScaling.ScheduledAction where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type ScheduledAction =
  { "AutoScalingGroupName" :: String
  , "DesiredCapacity" :: Maybe Int
  , "EndTime" :: Maybe String
  , "MaxSize" :: Maybe Int
  , "MinSize" :: Maybe Int
  , "Recurrence" :: Maybe String
  , "StartTime" :: Maybe String
  }

scheduledAction :: { "AutoScalingGroupName" :: String } -> ScheduledAction
scheduledAction required =
  merge required
    { "DesiredCapacity" : Nothing
    , "EndTime" : Nothing
    , "MaxSize" : Nothing
    , "MinSize" : Nothing
    , "Recurrence" : Nothing
    , "StartTime" : Nothing
    }