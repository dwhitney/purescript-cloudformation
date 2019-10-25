module CloudFormation.AWS.Cognito.UserPoolRiskConfigurationAttachment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype UserPoolRiskConfigurationAttachment = UserPoolRiskConfigurationAttachment
  { "UserPoolId" :: Value String
  , "ClientId" :: Value String
  , "CompromisedCredentialsRiskConfiguration" :: Maybe (Value CompromisedCredentialsRiskConfigurationType)
  , "AccountTakeoverRiskConfiguration" :: Maybe (Value AccountTakeoverRiskConfigurationType)
  , "RiskExceptionConfiguration" :: Maybe (Value RiskExceptionConfigurationType)
  }

derive instance newtypeUserPoolRiskConfigurationAttachment :: Newtype UserPoolRiskConfigurationAttachment _
derive newtype instance writeUserPoolRiskConfigurationAttachment :: WriteForeign UserPoolRiskConfigurationAttachment
instance resourceUserPoolRiskConfigurationAttachment :: Resource UserPoolRiskConfigurationAttachment where type_ _ = "AWS::Cognito::UserPoolRiskConfigurationAttachment"

userPoolRiskConfigurationAttachment :: { "UserPoolId" :: Value String, "ClientId" :: Value String } -> UserPoolRiskConfigurationAttachment
userPoolRiskConfigurationAttachment required = UserPoolRiskConfigurationAttachment
  (merge required
    { "CompromisedCredentialsRiskConfiguration" : Nothing
    , "AccountTakeoverRiskConfiguration" : Nothing
    , "RiskExceptionConfiguration" : Nothing
    })

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-actions
-- | - `NotifyConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-notifyconfiguration
type AccountTakeoverRiskConfigurationType =
  { "Actions" :: Value AccountTakeoverActionsType
  , "NotifyConfiguration" :: Maybe (Value NotifyConfigurationType)
  }

accountTakeoverRiskConfigurationType :: { "Actions" :: Value AccountTakeoverActionsType } -> AccountTakeoverRiskConfigurationType
accountTakeoverRiskConfigurationType required =
  (merge required
    { "NotifyConfiguration" : Nothing
    })

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
  { "SourceArn" :: Value String
  , "BlockEmail" :: Maybe (Value NotifyEmailType)
  , "ReplyTo" :: Maybe (Value String)
  , "NoActionEmail" :: Maybe (Value NotifyEmailType)
  , "From" :: Maybe (Value String)
  , "MfaEmail" :: Maybe (Value NotifyEmailType)
  }

notifyConfigurationType :: { "SourceArn" :: Value String } -> NotifyConfigurationType
notifyConfigurationType required =
  (merge required
    { "BlockEmail" : Nothing
    , "ReplyTo" : Nothing
    , "NoActionEmail" : Nothing
    , "From" : Nothing
    , "MfaEmail" : Nothing
    })

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html
-- |
-- | - `EventAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype-eventaction
type CompromisedCredentialsActionsType =
  { "EventAction" :: Value String
  }

compromisedCredentialsActionsType :: { "EventAction" :: Value String } -> CompromisedCredentialsActionsType
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
  { "Actions" :: Value CompromisedCredentialsActionsType
  , "EventFilter" :: Maybe (Value (Array String))
  }

compromisedCredentialsRiskConfigurationType :: { "Actions" :: Value CompromisedCredentialsActionsType } -> CompromisedCredentialsRiskConfigurationType
compromisedCredentialsRiskConfigurationType required =
  (merge required
    { "EventFilter" : Nothing
    })

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html
-- |
-- | - `Notify`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-notify
-- | - `EventAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-eventaction
type AccountTakeoverActionType =
  { "Notify" :: Value Boolean
  , "EventAction" :: Value String
  }

accountTakeoverActionType :: { "Notify" :: Value Boolean, "EventAction" :: Value String } -> AccountTakeoverActionType
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
  { "Subject" :: Value String
  , "TextBody" :: Maybe (Value String)
  , "HtmlBody" :: Maybe (Value String)
  }

notifyEmailType :: { "Subject" :: Value String } -> NotifyEmailType
notifyEmailType required =
  (merge required
    { "TextBody" : Nothing
    , "HtmlBody" : Nothing
    })

-- | `AWS::Cognito::UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html
-- |
-- | - `BlockedIPRangeList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-blockediprangelist
-- | - `SkippedIPRangeList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-skippediprangelist
type RiskExceptionConfigurationType =
  { "BlockedIPRangeList" :: Maybe (Value (Array String))
  , "SkippedIPRangeList" :: Maybe (Value (Array String))
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
  { "HighAction" :: Maybe (Value AccountTakeoverActionType)
  , "LowAction" :: Maybe (Value AccountTakeoverActionType)
  , "MediumAction" :: Maybe (Value AccountTakeoverActionType)
  }

accountTakeoverActionsType :: AccountTakeoverActionsType
accountTakeoverActionsType =
  { "HighAction" : Nothing
  , "LowAction" : Nothing
  , "MediumAction" : Nothing
  }