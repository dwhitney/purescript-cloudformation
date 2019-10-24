module CloudFormation.AWS.Cognito.UserPool where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::UserPool`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html
-- |
-- | - `UserPoolTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltags
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-policies
-- | - `VerificationMessageTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-verificationmessagetemplate
-- | - `MfaConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-mfaconfiguration
-- | - `Schema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-schema
-- | - `AdminCreateUserConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-admincreateuserconfig
-- | - `SmsAuthenticationMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsauthenticationmessage
-- | - `UserPoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpoolname
-- | - `SmsVerificationMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsverificationmessage
-- | - `UserPoolAddOns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooladdons
-- | - `EmailConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailconfiguration
-- | - `SmsConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsconfiguration
-- | - `AliasAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-aliasattributes
-- | - `EnabledMfas`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-enabledmfas
-- | - `EmailVerificationSubject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationsubject
-- | - `LambdaConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-lambdaconfig
-- | - `UsernameAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameattributes
-- | - `AutoVerifiedAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-autoverifiedattributes
-- | - `DeviceConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-deviceconfiguration
-- | - `EmailVerificationMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationmessage
newtype UserPool = UserPool
  { "UserPoolTags" :: Maybe CF.Json
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

derive instance newtypeUserPool :: Newtype UserPool _
instance resourceUserPool :: Resource UserPool where type_ _ = "AWS::Cognito::UserPool"

userPool :: UserPool
userPool = UserPool
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

-- | `AWS::Cognito::UserPool.InviteMessageTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html
-- |
-- | - `EmailMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-emailmessage
-- | - `SMSMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-smsmessage
-- | - `EmailSubject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-emailsubject
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

-- | `AWS::Cognito::UserPool.DeviceConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html
-- |
-- | - `DeviceOnlyRememberedOnUserPrompt`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-deviceonlyrememberedonuserprompt
-- | - `ChallengeRequiredOnNewDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-deviceconfiguration.html#cfn-cognito-userpool-deviceconfiguration-challengerequiredonnewdevice
type DeviceConfiguration =
  { "DeviceOnlyRememberedOnUserPrompt" :: Maybe Boolean
  , "ChallengeRequiredOnNewDevice" :: Maybe Boolean
  }

deviceConfiguration :: DeviceConfiguration
deviceConfiguration =
  { "DeviceOnlyRememberedOnUserPrompt" : Nothing
  , "ChallengeRequiredOnNewDevice" : Nothing
  }

-- | `AWS::Cognito::UserPool.LambdaConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html
-- |
-- | - `CreateAuthChallenge`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-createauthchallenge
-- | - `PreAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-preauthentication
-- | - `DefineAuthChallenge`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-defineauthchallenge
-- | - `PreSignUp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-presignup
-- | - `PreTokenGeneration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-pretokengeneration
-- | - `UserMigration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-usermigration
-- | - `PostAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-postauthentication
-- | - `PostConfirmation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-postconfirmation
-- | - `CustomMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-custommessage
-- | - `VerifyAuthChallengeResponse`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-lambdaconfig.html#cfn-cognito-userpool-lambdaconfig-verifyauthchallengeresponse
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

-- | `AWS::Cognito::UserPool.Policies`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html
-- |
-- | - `PasswordPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-policies.html#cfn-cognito-userpool-policies-passwordpolicy
type Policies =
  { "PasswordPolicy" :: Maybe PasswordPolicy
  }

policies :: Policies
policies =
  { "PasswordPolicy" : Nothing
  }

-- | `AWS::Cognito::UserPool.UserPoolAddOns`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userpooladdons.html
-- |
-- | - `AdvancedSecurityMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-userpooladdons.html#cfn-cognito-userpool-userpooladdons-advancedsecuritymode
type UserPoolAddOns =
  { "AdvancedSecurityMode" :: Maybe String
  }

userPoolAddOns :: UserPoolAddOns
userPoolAddOns =
  { "AdvancedSecurityMode" : Nothing
  }

-- | `AWS::Cognito::UserPool.VerificationMessageTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html
-- |
-- | - `EmailMessageByLink`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessagebylink
-- | - `EmailMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessage
-- | - `SmsMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-smsmessage
-- | - `EmailSubject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubject
-- | - `DefaultEmailOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-defaultemailoption
-- | - `EmailSubjectByLink`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubjectbylink
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

-- | `AWS::Cognito::UserPool.StringAttributeConstraints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html
-- |
-- | - `MinLength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html#cfn-cognito-userpool-stringattributeconstraints-minlength
-- | - `MaxLength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-stringattributeconstraints.html#cfn-cognito-userpool-stringattributeconstraints-maxlength
type StringAttributeConstraints =
  { "MinLength" :: Maybe String
  , "MaxLength" :: Maybe String
  }

stringAttributeConstraints :: StringAttributeConstraints
stringAttributeConstraints =
  { "MinLength" : Nothing
  , "MaxLength" : Nothing
  }

-- | `AWS::Cognito::UserPool.SmsConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html
-- |
-- | - `ExternalId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html#cfn-cognito-userpool-smsconfiguration-externalid
-- | - `SnsCallerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-smsconfiguration.html#cfn-cognito-userpool-smsconfiguration-snscallerarn
type SmsConfiguration =
  { "ExternalId" :: Maybe String
  , "SnsCallerArn" :: Maybe String
  }

smsConfiguration :: SmsConfiguration
smsConfiguration =
  { "ExternalId" : Nothing
  , "SnsCallerArn" : Nothing
  }

-- | `AWS::Cognito::UserPool.NumberAttributeConstraints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html
-- |
-- | - `MinValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-minvalue
-- | - `MaxValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-maxvalue
type NumberAttributeConstraints =
  { "MinValue" :: Maybe String
  , "MaxValue" :: Maybe String
  }

numberAttributeConstraints :: NumberAttributeConstraints
numberAttributeConstraints =
  { "MinValue" : Nothing
  , "MaxValue" : Nothing
  }

-- | `AWS::Cognito::UserPool.SchemaAttribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html
-- |
-- | - `DeveloperOnlyAttribute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-developeronlyattribute
-- | - `Mutable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-mutable
-- | - `AttributeDataType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-attributedatatype
-- | - `StringAttributeConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-stringattributeconstraints
-- | - `Required`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-required
-- | - `NumberAttributeConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-numberattributeconstraints
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-name
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

-- | `AWS::Cognito::UserPool.AdminCreateUserConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html
-- |
-- | - `InviteMessageTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate
-- | - `UnusedAccountValidityDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays
-- | - `AllowAdminCreateUserOnly`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly
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

-- | `AWS::Cognito::UserPool.EmailConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html
-- |
-- | - `ReplyToEmailAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-replytoemailaddress
-- | - `EmailSendingAccount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-emailsendingaccount
-- | - `SourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-sourcearn
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

-- | `AWS::Cognito::UserPool.PasswordPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html
-- |
-- | - `RequireNumbers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirenumbers
-- | - `MinimumLength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-minimumlength
-- | - `TemporaryPasswordValidityDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-temporarypasswordvaliditydays
-- | - `RequireUppercase`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requireuppercase
-- | - `RequireLowercase`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requirelowercase
-- | - `RequireSymbols`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-passwordpolicy.html#cfn-cognito-userpool-passwordpolicy-requiresymbols
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