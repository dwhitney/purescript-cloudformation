module CloudFormation.AWS.CodePipeline.Webhook where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Webhook =
  { "AuthenticationConfiguration" :: WebhookAuthConfiguration
  , "Filters" :: Array WebhookFilterRule
  , "Authentication" :: String
  , "TargetPipeline" :: String
  , "TargetAction" :: String
  , "TargetPipelineVersion" :: Int
  , "Name" :: Maybe String
  , "RegisterWithThirdParty" :: Maybe Boolean
  }

webhook :: { "AuthenticationConfiguration" :: WebhookAuthConfiguration, "Filters" :: Array WebhookFilterRule, "Authentication" :: String, "TargetPipeline" :: String, "TargetAction" :: String, "TargetPipelineVersion" :: Int } -> Webhook
webhook required =
  merge required
    { "Name" : Nothing
    , "RegisterWithThirdParty" : Nothing
    }

type WebhookAuthConfiguration =
  { "AllowedIPRange" :: Maybe String
  , "SecretToken" :: Maybe String
  }

webhookAuthConfiguration :: WebhookAuthConfiguration
webhookAuthConfiguration =
  { "AllowedIPRange" : Nothing
  , "SecretToken" : Nothing
  }

type WebhookFilterRule =
  { "JsonPath" :: String
  , "MatchEquals" :: Maybe String
  }

webhookFilterRule :: { "JsonPath" :: String } -> WebhookFilterRule
webhookFilterRule required =
  merge required
    { "MatchEquals" : Nothing
    }