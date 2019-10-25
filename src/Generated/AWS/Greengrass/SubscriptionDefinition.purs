module CloudFormation.AWS.Greengrass.SubscriptionDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::SubscriptionDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-name
newtype SubscriptionDefinition = SubscriptionDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value SubscriptionDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeSubscriptionDefinition :: Newtype SubscriptionDefinition _
derive newtype instance writeSubscriptionDefinition :: WriteForeign SubscriptionDefinition
instance resourceSubscriptionDefinition :: Resource SubscriptionDefinition where type_ _ = "AWS::Greengrass::SubscriptionDefinition"

subscriptionDefinition :: { "Name" :: Value String } -> SubscriptionDefinition
subscriptionDefinition required = SubscriptionDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::SubscriptionDefinition.Subscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html
-- |
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-target
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-id
-- | - `Source`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-source
-- | - `Subject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-subject
type Subscription =
  { "Target" :: Value String
  , "Id" :: Value String
  , "Source" :: Value String
  , "Subject" :: Value String
  }

subscription :: { "Target" :: Value String, "Id" :: Value String, "Source" :: Value String, "Subject" :: Value String } -> Subscription
subscription required =
  required

-- | `AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html
-- |
-- | - `Subscriptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions
type SubscriptionDefinitionVersion =
  { "Subscriptions" :: Value (Array Subscription)
  }

subscriptionDefinitionVersion :: { "Subscriptions" :: Value (Array Subscription) } -> SubscriptionDefinitionVersion
subscriptionDefinitionVersion required =
  required