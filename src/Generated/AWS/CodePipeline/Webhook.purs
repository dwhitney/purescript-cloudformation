module CloudFormation.AWS.CodePipeline.Webhook where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodePipeline::Webhook`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html
-- |
-- | - `AuthenticationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authenticationconfiguration
-- | - `Filters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-filters
-- | - `Authentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authentication
-- | - `TargetPipeline`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipeline
-- | - `TargetAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetaction
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-name
-- | - `TargetPipelineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipelineversion
-- | - `RegisterWithThirdParty`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-registerwiththirdparty
newtype Webhook = Webhook
  { "AuthenticationConfiguration" :: Value WebhookAuthConfiguration
  , "Filters" :: Value (Array WebhookFilterRule)
  , "Authentication" :: Value String
  , "TargetPipeline" :: Value String
  , "TargetAction" :: Value String
  , "TargetPipelineVersion" :: Value Int
  , "Name" :: Maybe (Value String)
  , "RegisterWithThirdParty" :: Maybe (Value Boolean)
  }

derive instance newtypeWebhook :: Newtype Webhook _
derive newtype instance writeWebhook :: WriteForeign Webhook
instance resourceWebhook :: Resource Webhook where type_ _ = "AWS::CodePipeline::Webhook"

webhook :: { "AuthenticationConfiguration" :: Value WebhookAuthConfiguration, "Filters" :: Value (Array WebhookFilterRule), "Authentication" :: Value String, "TargetPipeline" :: Value String, "TargetAction" :: Value String, "TargetPipelineVersion" :: Value Int } -> Webhook
webhook required = Webhook
  (merge required
    { "Name" : Nothing
    , "RegisterWithThirdParty" : Nothing
    })

-- | `AWS::CodePipeline::Webhook.WebhookAuthConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html
-- |
-- | - `AllowedIPRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-allowediprange
-- | - `SecretToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-secrettoken
type WebhookAuthConfiguration =
  { "AllowedIPRange" :: Maybe (Value String)
  , "SecretToken" :: Maybe (Value String)
  }

webhookAuthConfiguration :: WebhookAuthConfiguration
webhookAuthConfiguration =
  { "AllowedIPRange" : Nothing
  , "SecretToken" : Nothing
  }

-- | `AWS::CodePipeline::Webhook.WebhookFilterRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html
-- |
-- | - `JsonPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-jsonpath
-- | - `MatchEquals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-matchequals
type WebhookFilterRule =
  { "JsonPath" :: Value String
  , "MatchEquals" :: Maybe (Value String)
  }

webhookFilterRule :: { "JsonPath" :: Value String } -> WebhookFilterRule
webhookFilterRule required =
  (merge required
    { "MatchEquals" : Nothing
    })