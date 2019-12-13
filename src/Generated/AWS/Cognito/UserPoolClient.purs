module CloudFormation.AWS.Cognito.UserPoolClient where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cognito::UserPoolClient`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html
-- |
-- | - `AnalyticsConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-analyticsconfiguration
-- | - `GenerateSecret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-generatesecret
-- | - `CallbackURLs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-callbackurls
-- | - `AllowedOAuthScopes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthscopes
-- | - `ReadAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-readattributes
-- | - `AllowedOAuthFlowsUserPoolClient`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflowsuserpoolclient
-- | - `DefaultRedirectURI`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-defaultredirecturi
-- | - `SupportedIdentityProviders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-supportedidentityproviders
-- | - `ClientName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-clientname
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-userpoolid
-- | - `AllowedOAuthFlows`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-allowedoauthflows
-- | - `ExplicitAuthFlows`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-explicitauthflows
-- | - `LogoutURLs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-logouturls
-- | - `RefreshTokenValidity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-refreshtokenvalidity
-- | - `WriteAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-writeattributes
-- | - `PreventUserExistenceErrors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolclient.html#cfn-cognito-userpoolclient-preventuserexistenceerrors
newtype UserPoolClient = UserPoolClient
  { "UserPoolId" :: Value String
  , "AnalyticsConfiguration" :: Maybe (Value AnalyticsConfiguration)
  , "GenerateSecret" :: Maybe (Value Boolean)
  , "CallbackURLs" :: Maybe (Value (Array String))
  , "AllowedOAuthScopes" :: Maybe (Value (Array String))
  , "ReadAttributes" :: Maybe (Value (Array String))
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe (Value Boolean)
  , "DefaultRedirectURI" :: Maybe (Value String)
  , "SupportedIdentityProviders" :: Maybe (Value (Array String))
  , "ClientName" :: Maybe (Value String)
  , "AllowedOAuthFlows" :: Maybe (Value (Array String))
  , "ExplicitAuthFlows" :: Maybe (Value (Array String))
  , "LogoutURLs" :: Maybe (Value (Array String))
  , "RefreshTokenValidity" :: Maybe (Value Int)
  , "WriteAttributes" :: Maybe (Value (Array String))
  , "PreventUserExistenceErrors" :: Maybe (Value String)
  }

derive instance newtypeUserPoolClient :: Newtype UserPoolClient _
derive newtype instance writeUserPoolClient :: WriteForeign UserPoolClient
instance resourceUserPoolClient :: Resource UserPoolClient where type_ _ = "AWS::Cognito::UserPoolClient"

userPoolClient :: { "UserPoolId" :: Value String } -> UserPoolClient
userPoolClient required = UserPoolClient
  (merge required
    { "AnalyticsConfiguration" : Nothing
    , "GenerateSecret" : Nothing
    , "CallbackURLs" : Nothing
    , "AllowedOAuthScopes" : Nothing
    , "ReadAttributes" : Nothing
    , "AllowedOAuthFlowsUserPoolClient" : Nothing
    , "DefaultRedirectURI" : Nothing
    , "SupportedIdentityProviders" : Nothing
    , "ClientName" : Nothing
    , "AllowedOAuthFlows" : Nothing
    , "ExplicitAuthFlows" : Nothing
    , "LogoutURLs" : Nothing
    , "RefreshTokenValidity" : Nothing
    , "WriteAttributes" : Nothing
    , "PreventUserExistenceErrors" : Nothing
    })

-- | `AWS::Cognito::UserPoolClient.AnalyticsConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html
-- |
-- | - `UserDataShared`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-userdatashared
-- | - `ExternalId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-externalid
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-applicationid
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-analyticsconfiguration.html#cfn-cognito-userpoolclient-analyticsconfiguration-rolearn
type AnalyticsConfiguration =
  { "UserDataShared" :: Maybe (Value Boolean)
  , "ExternalId" :: Maybe (Value String)
  , "ApplicationId" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  }

analyticsConfiguration :: AnalyticsConfiguration
analyticsConfiguration =
  { "UserDataShared" : Nothing
  , "ExternalId" : Nothing
  , "ApplicationId" : Nothing
  , "RoleArn" : Nothing
  }