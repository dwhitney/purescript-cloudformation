module AWS.Greengrass.SubscriptionDefinitionVersion where 




type SubscriptionDefinitionVersion =
  { "SubscriptionDefinitionId" :: String
  , "Subscriptions" :: Array Subscription
  }

subscriptionDefinitionVersion :: { "SubscriptionDefinitionId" :: String, "Subscriptions" :: Array Subscription } -> SubscriptionDefinitionVersion
subscriptionDefinitionVersion required =
  required

type Subscription =
  { "Target" :: String
  , "Id" :: String
  , "Source" :: String
  , "Subject" :: String
  }

subscription :: { "Target" :: String, "Id" :: String, "Source" :: String, "Subject" :: String } -> Subscription
subscription required =
  required