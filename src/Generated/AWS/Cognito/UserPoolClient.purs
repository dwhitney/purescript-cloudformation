module CloudFormation.AWS.Cognito.UserPoolClient where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype UserPoolClient = UserPoolClient
  { "UserPoolId" :: String
  , "AnalyticsConfiguration" :: Maybe AnalyticsConfiguration
  , "GenerateSecret" :: Maybe Boolean
  , "CallbackURLs" :: Maybe (Array String)
  , "AllowedOAuthScopes" :: Maybe (Array String)
  , "ReadAttributes" :: Maybe (Array String)
  , "AllowedOAuthFlowsUserPoolClient" :: Maybe Boolean
  , "DefaultRedirectURI" :: Maybe String
  , "SupportedIdentityProviders" :: Maybe (Array String)
  , "ClientName" :: Maybe String
  , "AllowedOAuthFlows" :: Maybe (Array String)
  , "ExplicitAuthFlows" :: Maybe (Array String)
  , "LogoutURLs" :: Maybe (Array String)
  , "RefreshTokenValidity" :: Maybe Int
  , "WriteAttributes" :: Maybe (Array String)
  }

derive instance newtypeUserPoolClient :: Newtype UserPoolClient _
instance resourceUserPoolClient :: Resource UserPoolClient where type_ _ = "AWS::Cognito::UserPoolClient"

userPoolClient :: { "UserPoolId" :: String } -> UserPoolClient
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
  { "UserDataShared" :: Maybe Boolean
  , "ExternalId" :: Maybe String
  , "ApplicationId" :: Maybe String
  , "RoleArn" :: Maybe String
  }

analyticsConfiguration :: AnalyticsConfiguration
analyticsConfiguration =
  { "UserDataShared" : Nothing
  , "ExternalId" : Nothing
  , "ApplicationId" : Nothing
  , "RoleArn" : Nothing
  }