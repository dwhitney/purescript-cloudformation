module CloudFormation.AWS.Cognito.UserPoolRiskConfigurationAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type AccountTakeoverRiskConfigurationType =
  { "Actions" :: AccountTakeoverActionsType
  , "NotifyConfiguration" :: Maybe NotifyConfigurationType
  }

accountTakeoverRiskConfigurationType :: { "Actions" :: AccountTakeoverActionsType } -> AccountTakeoverRiskConfigurationType
accountTakeoverRiskConfigurationType required =
  merge required
    { "NotifyConfiguration" : Nothing
    }

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

type CompromisedCredentialsActionsType =
  { "EventAction" :: String
  }

compromisedCredentialsActionsType :: { "EventAction" :: String } -> CompromisedCredentialsActionsType
compromisedCredentialsActionsType required =
  required

type CompromisedCredentialsRiskConfigurationType =
  { "Actions" :: CompromisedCredentialsActionsType
  , "EventFilter" :: Maybe (Array String)
  }

compromisedCredentialsRiskConfigurationType :: { "Actions" :: CompromisedCredentialsActionsType } -> CompromisedCredentialsRiskConfigurationType
compromisedCredentialsRiskConfigurationType required =
  merge required
    { "EventFilter" : Nothing
    }

type AccountTakeoverActionType =
  { "Notify" :: Boolean
  , "EventAction" :: String
  }

accountTakeoverActionType :: { "Notify" :: Boolean, "EventAction" :: String } -> AccountTakeoverActionType
accountTakeoverActionType required =
  required

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

type RiskExceptionConfigurationType =
  { "BlockedIPRangeList" :: Maybe (Array String)
  , "SkippedIPRangeList" :: Maybe (Array String)
  }

riskExceptionConfigurationType :: RiskExceptionConfigurationType
riskExceptionConfigurationType =
  { "BlockedIPRangeList" : Nothing
  , "SkippedIPRangeList" : Nothing
  }

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