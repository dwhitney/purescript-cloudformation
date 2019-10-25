module CloudFormation.AWS.Greengrass.SubscriptionDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::SubscriptionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html
-- |
-- | - `SubscriptionDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptiondefinitionid
-- | - `Subscriptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptions
newtype SubscriptionDefinitionVersion = SubscriptionDefinitionVersion
  { "SubscriptionDefinitionId" :: Value String
  , "Subscriptions" :: Value (Array Subscription)
  }

derive instance newtypeSubscriptionDefinitionVersion :: Newtype SubscriptionDefinitionVersion _
derive newtype instance writeSubscriptionDefinitionVersion :: WriteForeign SubscriptionDefinitionVersion
instance resourceSubscriptionDefinitionVersion :: Resource SubscriptionDefinitionVersion where type_ _ = "AWS::Greengrass::SubscriptionDefinitionVersion"

subscriptionDefinitionVersion :: { "SubscriptionDefinitionId" :: Value String, "Subscriptions" :: Value (Array Subscription) } -> SubscriptionDefinitionVersion
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
  { "Target" :: Value String
  , "Id" :: Value String
  , "Source" :: Value String
  , "Subject" :: Value String
  }

subscription :: { "Target" :: Value String, "Id" :: Value String, "Source" :: Value String, "Subject" :: Value String } -> Subscription
subscription required =
  required