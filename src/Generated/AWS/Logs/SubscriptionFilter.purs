module CloudFormation.AWS.Logs.SubscriptionFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype SubscriptionFilter = SubscriptionFilter
  { "DestinationArn" :: String
  , "FilterPattern" :: String
  , "LogGroupName" :: String
  , "RoleArn" :: Maybe String
  }

derive instance newtypeSubscriptionFilter :: Newtype SubscriptionFilter _
instance resourceSubscriptionFilter :: Resource SubscriptionFilter where type_ _ = "AWS::Logs::SubscriptionFilter"

subscriptionFilter :: { "DestinationArn" :: String, "FilterPattern" :: String, "LogGroupName" :: String } -> SubscriptionFilter
subscriptionFilter required = SubscriptionFilter
  (merge required
    { "RoleArn" : Nothing
    })