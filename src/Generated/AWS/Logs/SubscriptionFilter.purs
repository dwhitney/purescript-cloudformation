module CloudFormation.AWS.Logs.SubscriptionFilter where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DestinationArn" :: Value String
  , "FilterPattern" :: Value String
  , "LogGroupName" :: Value String
  , "RoleArn" :: Maybe (Value String)
  }

derive instance newtypeSubscriptionFilter :: Newtype SubscriptionFilter _
derive newtype instance writeSubscriptionFilter :: WriteForeign SubscriptionFilter
instance resourceSubscriptionFilter :: Resource SubscriptionFilter where type_ _ = "AWS::Logs::SubscriptionFilter"

subscriptionFilter :: { "DestinationArn" :: Value String, "FilterPattern" :: Value String, "LogGroupName" :: Value String } -> SubscriptionFilter
subscriptionFilter required = SubscriptionFilter
  (merge required
    { "RoleArn" : Nothing
    })