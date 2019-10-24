module CloudFormation.AWS.Greengrass.SubscriptionDefinition where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::Greengrass::SubscriptionDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-name
type SubscriptionDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe SubscriptionDefinitionVersion
  , "Tags" :: Maybe Json
  }

subscriptionDefinition :: { "Name" :: String } -> SubscriptionDefinition
subscriptionDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

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
  { "Target" :: String
  , "Id" :: String
  , "Source" :: String
  , "Subject" :: String
  }

subscription :: { "Target" :: String, "Id" :: String, "Source" :: String, "Subject" :: String } -> Subscription
subscription required =
  required

-- | `AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html
-- |
-- | - `Subscriptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions
type SubscriptionDefinitionVersion =
  { "Subscriptions" :: Array Subscription
  }

subscriptionDefinitionVersion :: { "Subscriptions" :: Array Subscription } -> SubscriptionDefinitionVersion
subscriptionDefinitionVersion required =
  required