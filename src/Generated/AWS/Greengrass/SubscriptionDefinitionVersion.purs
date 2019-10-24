module CloudFormation.AWS.Greengrass.SubscriptionDefinitionVersion where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Greengrass::SubscriptionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html
-- |
-- | - `SubscriptionDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptiondefinitionid
-- | - `Subscriptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptions
newtype SubscriptionDefinitionVersion = SubscriptionDefinitionVersion
  { "SubscriptionDefinitionId" :: String
  , "Subscriptions" :: Array Subscription
  }

derive instance newtypeSubscriptionDefinitionVersion :: Newtype SubscriptionDefinitionVersion _
instance resourceSubscriptionDefinitionVersion :: Resource SubscriptionDefinitionVersion where type_ _ = "AWS::Greengrass::SubscriptionDefinitionVersion"

subscriptionDefinitionVersion :: { "SubscriptionDefinitionId" :: String, "Subscriptions" :: Array Subscription } -> SubscriptionDefinitionVersion
subscriptionDefinitionVersion required = SubscriptionDefinitionVersion
  required

-- | `AWS::Greengrass::SubscriptionDefinitionVersion.Subscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html
-- |
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-target
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-id
-- | - `Source`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-source
-- | - `Subject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-subject
type Subscription =
  { "Target" :: String
  , "Id" :: String
  , "Source" :: String
  , "Subject" :: String
  }

subscription :: { "Target" :: String, "Id" :: String, "Source" :: String, "Subject" :: String } -> Subscription
subscription required =
  required