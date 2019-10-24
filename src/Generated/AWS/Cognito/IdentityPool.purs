module CloudFormation.AWS.Cognito.IdentityPool where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::IdentityPool`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html
-- |
-- | - `PushSync`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-pushsync
-- | - `CognitoIdentityProviders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitoidentityproviders
-- | - `CognitoEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitoevents
-- | - `DeveloperProviderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-developerprovidername
-- | - `CognitoStreams`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-cognitostreams
-- | - `IdentityPoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-identitypoolname
-- | - `AllowUnauthenticatedIdentities`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-allowunauthenticatedidentities
-- | - `SupportedLoginProviders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-supportedloginproviders
-- | - `SamlProviderARNs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-samlproviderarns
-- | - `OpenIdConnectProviderARNs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-openidconnectproviderarns
newtype IdentityPool = IdentityPool
  { "AllowUnauthenticatedIdentities" :: Boolean
  , "PushSync" :: Maybe PushSync
  , "CognitoIdentityProviders" :: Maybe (Array CognitoIdentityProvider)
  , "CognitoEvents" :: Maybe CF.Json
  , "DeveloperProviderName" :: Maybe String
  , "CognitoStreams" :: Maybe CognitoStreams
  , "IdentityPoolName" :: Maybe String
  , "SupportedLoginProviders" :: Maybe CF.Json
  , "SamlProviderARNs" :: Maybe (Array String)
  , "OpenIdConnectProviderARNs" :: Maybe (Array String)
  }

derive instance newtypeIdentityPool :: Newtype IdentityPool _
instance resourceIdentityPool :: Resource IdentityPool where type_ _ = "AWS::Cognito::IdentityPool"

identityPool :: { "AllowUnauthenticatedIdentities" :: Boolean } -> IdentityPool
identityPool required = IdentityPool
  (merge required
    { "PushSync" : Nothing
    , "CognitoIdentityProviders" : Nothing
    , "CognitoEvents" : Nothing
    , "DeveloperProviderName" : Nothing
    , "CognitoStreams" : Nothing
    , "IdentityPoolName" : Nothing
    , "SupportedLoginProviders" : Nothing
    , "SamlProviderARNs" : Nothing
    , "OpenIdConnectProviderARNs" : Nothing
    })

-- | `AWS::Cognito::IdentityPool.CognitoIdentityProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html
-- |
-- | - `ServerSideTokenCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-serversidetokencheck
-- | - `ProviderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-providername
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitoidentityprovider.html#cfn-cognito-identitypool-cognitoidentityprovider-clientid
type CognitoIdentityProvider =
  { "ServerSideTokenCheck" :: Maybe Boolean
  , "ProviderName" :: Maybe String
  , "ClientId" :: Maybe String
  }

cognitoIdentityProvider :: CognitoIdentityProvider
cognitoIdentityProvider =
  { "ServerSideTokenCheck" : Nothing
  , "ProviderName" : Nothing
  , "ClientId" : Nothing
  }

-- | `AWS::Cognito::IdentityPool.PushSync`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html
-- |
-- | - `ApplicationArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-applicationarns
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-rolearn
type PushSync =
  { "ApplicationArns" :: Maybe (Array String)
  , "RoleArn" :: Maybe String
  }

pushSync :: PushSync
pushSync =
  { "ApplicationArns" : Nothing
  , "RoleArn" : Nothing
  }

-- | `AWS::Cognito::IdentityPool.CognitoStreams`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html
-- |
-- | - `StreamingStatus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamingstatus
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-streamname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-cognitostreams.html#cfn-cognito-identitypool-cognitostreams-rolearn
type CognitoStreams =
  { "StreamingStatus" :: Maybe String
  , "StreamName" :: Maybe String
  , "RoleArn" :: Maybe String
  }

cognitoStreams :: CognitoStreams
cognitoStreams =
  { "StreamingStatus" : Nothing
  , "StreamName" : Nothing
  , "RoleArn" : Nothing
  }