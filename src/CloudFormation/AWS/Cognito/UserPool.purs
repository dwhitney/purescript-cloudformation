module CloudFormation.AWS.Cognito.UserPool where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


type UserPool =
  { "UserPoolTags" :: Maybe Foreign
  , "Policies" :: Maybe Policies
  , "VerificationMessageTemplate" :: Maybe VerificationMessageTemplate
  , "MfaConfiguration" :: Maybe String
  , "Schema" :: Maybe (Array SchemaAttribute)
  , "AdminCreateUserConfig" :: Maybe AdminCreateUserConfig
  , "SmsAuthenticationMessage" :: Maybe String
  , "UserPoolName" :: Maybe String
  , "SmsVerificationMessage" :: Maybe String
  , "UserPoolAddOns" :: Maybe UserPoolAddOns
  , "EmailConfiguration" :: Maybe EmailConfiguration
  , "SmsConfiguration" :: Maybe SmsConfiguration
  , "AliasAttributes" :: Maybe (Array String)
  , "EnabledMfas" :: Maybe (Array String)
  , "EmailVerificationSubject" :: Maybe String
  , "LambdaConfig" :: Maybe LambdaConfig
  , "UsernameAttributes" :: Maybe (Array String)
  , "AutoVerifiedAttributes" :: Maybe (Array String)
  , "DeviceConfiguration" :: Maybe DeviceConfiguration
  , "EmailVerificationMessage" :: Maybe String
  }

userPool :: UserPool
userPool =
  { "UserPoolTags" : Nothing
  , "Policies" : Nothing
  , "VerificationMessageTemplate" : Nothing
  , "MfaConfiguration" : Nothing
  , "Schema" : Nothing
  , "AdminCreateUserConfig" : Nothing
  , "SmsAuthenticationMessage" : Nothing
  , "UserPoolName" : Nothing
  , "SmsVerificationMessage" : Nothing
  , "UserPoolAddOns" : Nothing
  , "EmailConfiguration" : Nothing
  , "SmsConfiguration" : Nothing
  , "AliasAttributes" : Nothing
  , "EnabledMfas" : Nothing
  , "EmailVerificationSubject" : Nothing
  , "LambdaConfig" : Nothing
  , "UsernameAttributes" : Nothing
  , "AutoVerifiedAttributes" : Nothing
  , "DeviceConfiguration" : Nothing
  , "EmailVerificationMessage" : Nothing
  }

type InviteMessageTemplate =
  { "EmailMessage" :: Maybe String
  , "SMSMessage" :: Maybe String
  , "EmailSubject" :: Maybe String
  }

inviteMessageTemplate :: InviteMessageTemplate
inviteMessageTemplate =
  { "EmailMessage" : Nothing
  , "SMSMessage" : Nothing
  , "EmailSubject" : Nothing
  }

type DeviceConfiguration =
  { "DeviceOnlyRememberedOnUserPrompt" :: Maybe Boolean
  , "ChallengeRequiredOnNewDevice" :: Maybe Boolean
  }

deviceConfiguration :: DeviceConfiguration
deviceConfiguration =
  { "DeviceOnlyRememberedOnUserPrompt" : Nothing
  , "ChallengeRequiredOnNewDevice" : Nothing
  }

type LambdaConfig =
  { "CreateAuthChallenge" :: Maybe String
  , "PreAuthentication" :: Maybe String
  , "DefineAuthChallenge" :: Maybe String
  , "PreSignUp" :: Maybe String
  , "PreTokenGeneration" :: Maybe String
  , "UserMigration" :: Maybe String
  , "PostAuthentication" :: Maybe String
  , "PostConfirmation" :: Maybe String
  , "CustomMessage" :: Maybe String
  , "VerifyAuthChallengeResponse" :: Maybe String
  }

lambdaConfig :: LambdaConfig
lambdaConfig =
  { "CreateAuthChallenge" : Nothing
  , "PreAuthentication" : Nothing
  , "DefineAuthChallenge" : Nothing
  , "PreSignUp" : Nothing
  , "PreTokenGeneration" : Nothing
  , "UserMigration" : Nothing
  , "PostAuthentication" : Nothing
  , "PostConfirmation" : Nothing
  , "CustomMessage" : Nothing
  , "VerifyAuthChallengeResponse" : Nothing
  }

type Policies =
  { "PasswordPolicy" :: Maybe PasswordPolicy
  }

policies :: Policies
policies =
  { "PasswordPolicy" : Nothing
  }

type UserPoolAddOns =
  { "AdvancedSecurityMode" :: Maybe String
  }

userPoolAddOns :: UserPoolAddOns
userPoolAddOns =
  { "AdvancedSecurityMode" : Nothing
  }

type VerificationMessageTemplate =
  { "EmailMessageByLink" :: Maybe String
  , "EmailMessage" :: Maybe String
  , "SmsMessage" :: Maybe String
  , "EmailSubject" :: Maybe String
  , "DefaultEmailOption" :: Maybe String
  , "EmailSubjectByLink" :: Maybe String
  }

verificationMessageTemplate :: VerificationMessageTemplate
verificationMessageTemplate =
  { "EmailMessageByLink" : Nothing
  , "EmailMessage" : Nothing
  , "SmsMessage" : Nothing
  , "EmailSubject" : Nothing
  , "DefaultEmailOption" : Nothing
  , "EmailSubjectByLink" : Nothing
  }

type StringAttributeConstraints =
  { "MinLength" :: Maybe String
  , "MaxLength" :: Maybe String
  }

stringAttributeConstraints :: StringAttributeConstraints
stringAttributeConstraints =
  { "MinLength" : Nothing
  , "MaxLength" : Nothing
  }

type SmsConfiguration =
  { "ExternalId" :: Maybe String
  , "SnsCallerArn" :: Maybe String
  }

smsConfiguration :: SmsConfiguration
smsConfiguration =
  { "ExternalId" : Nothing
  , "SnsCallerArn" : Nothing
  }

type NumberAttributeConstraints =
  { "MinValue" :: Maybe String
  , "MaxValue" :: Maybe String
  }

numberAttributeConstraints :: NumberAttributeConstraints
numberAttributeConstraints =
  { "MinValue" : Nothing
  , "MaxValue" : Nothing
  }

type SchemaAttribute =
  { "DeveloperOnlyAttribute" :: Maybe Boolean
  , "Mutable" :: Maybe Boolean
  , "AttributeDataType" :: Maybe String
  , "StringAttributeConstraints" :: Maybe StringAttributeConstraints
  , "Required" :: Maybe Boolean
  , "NumberAttributeConstraints" :: Maybe NumberAttributeConstraints
  , "Name" :: Maybe String
  }

schemaAttribute :: SchemaAttribute
schemaAttribute =
  { "DeveloperOnlyAttribute" : Nothing
  , "Mutable" : Nothing
  , "AttributeDataType" : Nothing
  , "StringAttributeConstraints" : Nothing
  , "Required" : Nothing
  , "NumberAttributeConstraints" : Nothing
  , "Name" : Nothing
  }

type AdminCreateUserConfig =
  { "InviteMessageTemplate" :: Maybe InviteMessageTemplate
  , "UnusedAccountValidityDays" :: Maybe Int
  , "AllowAdminCreateUserOnly" :: Maybe Boolean
  }

adminCreateUserConfig :: AdminCreateUserConfig
adminCreateUserConfig =
  { "InviteMessageTemplate" : Nothing
  , "UnusedAccountValidityDays" : Nothing
  , "AllowAdminCreateUserOnly" : Nothing
  }

type EmailConfiguration =
  { "ReplyToEmailAddress" :: Maybe String
  , "EmailSendingAccount" :: Maybe String
  , "SourceArn" :: Maybe String
  }

emailConfiguration :: EmailConfiguration
emailConfiguration =
  { "ReplyToEmailAddress" : Nothing
  , "EmailSendingAccount" : Nothing
  , "SourceArn" : Nothing
  }

type PasswordPolicy =
  { "RequireNumbers" :: Maybe Boolean
  , "MinimumLength" :: Maybe Int
  , "TemporaryPasswordValidityDays" :: Maybe Int
  , "RequireUppercase" :: Maybe Boolean
  , "RequireLowercase" :: Maybe Boolean
  , "RequireSymbols" :: Maybe Boolean
  }

passwordPolicy :: PasswordPolicy
passwordPolicy =
  { "RequireNumbers" : Nothing
  , "MinimumLength" : Nothing
  , "TemporaryPasswordValidityDays" : Nothing
  , "RequireUppercase" : Nothing
  , "RequireLowercase" : Nothing
  , "RequireSymbols" : Nothing
  }