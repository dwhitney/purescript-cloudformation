module CloudFormation.AWS.Logs.SubscriptionFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Logs::SubscriptionFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html
-- |
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-destinationarn
-- | - `FilterPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-filterpattern
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-loggroupname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-cwl-subscriptionfilter-rolearn
type SubscriptionFilter =
  { "DestinationArn" :: String
  , "FilterPattern" :: String
  , "LogGroupName" :: String
  , "RoleArn" :: Maybe String
  }

subscriptionFilter :: { "DestinationArn" :: String, "FilterPattern" :: String, "LogGroupName" :: String } -> SubscriptionFilter
subscriptionFilter required =
  merge required
    { "RoleArn" : Nothing
    }