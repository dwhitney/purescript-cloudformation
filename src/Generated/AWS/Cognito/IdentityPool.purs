module CloudFormation.AWS.Cognito.IdentityPool where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
-- | - `AllowClassicFlow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypool.html#cfn-cognito-identitypool-allowclassicflow
newtype IdentityPool = IdentityPool
  { "AllowUnauthenticatedIdentities" :: Value Boolean
  , "PushSync" :: Maybe (Value PushSync)
  , "CognitoIdentityProviders" :: Maybe (Value (Array CognitoIdentityProvider))
  , "CognitoEvents" :: Maybe (Value CF.Json)
  , "DeveloperProviderName" :: Maybe (Value String)
  , "CognitoStreams" :: Maybe (Value CognitoStreams)
  , "IdentityPoolName" :: Maybe (Value String)
  , "SupportedLoginProviders" :: Maybe (Value CF.Json)
  , "SamlProviderARNs" :: Maybe (Value (Array String))
  , "OpenIdConnectProviderARNs" :: Maybe (Value (Array String))
  , "AllowClassicFlow" :: Maybe (Value Boolean)
  }

derive instance newtypeIdentityPool :: Newtype IdentityPool _
derive newtype instance writeIdentityPool :: WriteForeign IdentityPool
instance resourceIdentityPool :: Resource IdentityPool where type_ _ = "AWS::Cognito::IdentityPool"

identityPool :: { "AllowUnauthenticatedIdentities" :: Value Boolean } -> IdentityPool
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
    , "AllowClassicFlow" : Nothing
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
  { "ServerSideTokenCheck" :: Maybe (Value Boolean)
  , "ProviderName" :: Maybe (Value String)
  , "ClientId" :: Maybe (Value String)
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
  { "ApplicationArns" :: Maybe (Value (Array String))
  , "RoleArn" :: Maybe (Value String)
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
  { "StreamingStatus" :: Maybe (Value String)
  , "StreamName" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  }

cognitoStreams :: CognitoStreams
cognitoStreams =
  { "StreamingStatus" : Nothing
  , "StreamName" : Nothing
  , "RoleArn" : Nothing
  }