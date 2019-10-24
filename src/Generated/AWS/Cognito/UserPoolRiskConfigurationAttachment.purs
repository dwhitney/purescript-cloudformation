module CloudFormation.AWS.Cognito.UserPoolRiskConfigurationAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html
-- |
-- | - `CompromisedCredentialsRiskConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfiguration
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-userpoolid
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-clientid
-- | - `AccountTakeoverRiskConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfiguration
-- | - `RiskExceptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfiguration
type UserPoolRiskConfigurationAttachment =
  { "UserPoolId" :: String
  , "ClientId" :: String
  , "CompromisedCredentialsRiskConfiguration" :: Maybe CompromisedCredentialsRiskConfigurationType
  , "AccountTakeoverRiskConfiguration" :: Maybe AccountTakeoverRiskConfigurationType
  , "RiskExceptionConfiguration" :: Maybe RiskExceptionConfigurationType
  }

userPoolRiskConfigurationAttachment :: { "UserPoolId" :: String, "ClientId" :: String } -> UserPoolRiskConfigurationAttachment
userPoolRiskConfigurationAttachment required =
  merge required
    { "CompromisedCredentialsRiskConfiguration" : Nothing
    , "AccountTakeoverRiskConfiguration" : Nothing
    , "RiskExceptionConfiguration" : Nothing
    }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-actions
-- | - `NotifyConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-notifyconfiguration
type AccountTakeoverRiskConfigurationType =
  { "Actions" :: AccountTakeoverActionsType
  , "NotifyConfiguration" :: Maybe NotifyConfigurationType
  }

accountTakeoverRiskConfigurationType :: { "Actions" :: AccountTakeoverActionsType } -> AccountTakeoverRiskConfigurationType
accountTakeoverRiskConfigurationType required =
  merge required
    { "NotifyConfiguration" : Nothing
    }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html
-- |
-- | - `BlockEmail`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-blockemail
-- | - `ReplyTo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-replyto
-- | - `SourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-sourcearn
-- | - `NoActionEmail`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-noactionemail
-- | - `From`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-from
-- | - `MfaEmail`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-mfaemail
type NotifyConfigurationType =
  { "SourceArn" :: String
  , "BlockEmail" :: Maybe NotifyEmailType
  , "ReplyTo" :: Maybe String
  , "NoActionEmail" :: Maybe NotifyEmailType
  , "From" :: Maybe String
  , "MfaEmail" :: Maybe NotifyEmailType
  }

notifyConfigurationType :: { "SourceArn" :: String } -> NotifyConfigurationType
notifyConfigurationType required =
  merge required
    { "BlockEmail" : Nothing
    , "ReplyTo" : Nothing
    , "NoActionEmail" : Nothing
    , "From" : Nothing
    , "MfaEmail" : Nothing
    }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html
-- |
-- | - `EventAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype-eventaction
type CompromisedCredentialsActionsType =
  { "EventAction" :: String
  }

compromisedCredentialsActionsType :: { "EventAction" :: String } -> CompromisedCredentialsActionsType
compromisedCredentialsActionsType required =
  required

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsRiskConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-actions
-- | - `EventFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-eventfilter
type CompromisedCredentialsRiskConfigurationType =
  { "Actions" :: CompromisedCredentialsActionsType
  , "EventFilter" :: Maybe (Array String)
  }

compromisedCredentialsRiskConfigurationType :: { "Actions" :: CompromisedCredentialsActionsType } -> CompromisedCredentialsRiskConfigurationType
compromisedCredentialsRiskConfigurationType required =
  merge required
    { "EventFilter" : Nothing
    }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html
-- |
-- | - `Notify`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-notify
-- | - `EventAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-eventaction
type AccountTakeoverActionType =
  { "Notify" :: Boolean
  , "EventAction" :: String
  }

accountTakeoverActionType :: { "Notify" :: Boolean, "EventAction" :: String } -> AccountTakeoverActionType
accountTakeoverActionType required =
  required

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyEmailType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html
-- |
-- | - `TextBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-textbody
-- | - `HtmlBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-htmlbody
-- | - `Subject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-subject
type NotifyEmailType =
  { "Subject" :: String
  , "TextBody" :: Maybe String
  , "HtmlBody" :: Maybe String
  }

notifyEmailType :: { "Subject" :: String } -> NotifyEmailType
notifyEmailType required =
  merge required
    { "TextBody" : Nothing
    , "HtmlBody" : Nothing
    }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html
-- |
-- | - `BlockedIPRangeList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-blockediprangelist
-- | - `SkippedIPRangeList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-skippediprangelist
type RiskExceptionConfigurationType =
  { "BlockedIPRangeList" :: Maybe (Array String)
  , "SkippedIPRangeList" :: Maybe (Array String)
  }

riskExceptionConfigurationType :: RiskExceptionConfigurationType
riskExceptionConfigurationType =
  { "BlockedIPRangeList" : Nothing
  , "SkippedIPRangeList" : Nothing
  }

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html
-- |
-- | - `HighAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-highaction
-- | - `LowAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-lowaction
-- | - `MediumAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-mediumaction
type AccountTakeoverActionsType =
  { "HighAction" :: Maybe AccountTakeoverActionType
  , "LowAction" :: Maybe AccountTakeoverActionType
  , "MediumAction" :: Maybe AccountTakeoverActionType
  }

accountTakeoverActionsType :: AccountTakeoverActionsType
accountTakeoverActionsType =
  { "HighAction" : Nothing
  , "LowAction" : Nothing
  , "MediumAction" : Nothing
  }