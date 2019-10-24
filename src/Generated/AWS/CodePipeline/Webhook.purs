module CloudFormation.AWS.CodePipeline.Webhook where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

-- | `AWS::CodePipeline::Webhook.WebhookAuthConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html
-- |
-- | - `AllowedIPRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-allowediprange
-- | - `SecretToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-secrettoken
type WebhookAuthConfiguration =
  { "AllowedIPRange" :: Maybe String
  , "SecretToken" :: Maybe String
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
  { "JsonPath" :: String
  , "MatchEquals" :: Maybe String
  }

webhookFilterRule :: { "JsonPath" :: String } -> WebhookFilterRule
webhookFilterRule required =
  merge required
    { "MatchEquals" : Nothing
    }