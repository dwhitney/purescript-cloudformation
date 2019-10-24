module CloudFormation.AWS.AppSync.GraphQLApi where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Tag (Tag)


-- | `AWS::AppSync::GraphQLApi`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html-- |
-- | - `OpenIDConnectConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-openidconnectconfig
-- | - `UserPoolConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-userpoolconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-name
-- | - `AuthenticationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-authenticationtype
-- | - `LogConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-logconfig
-- | - `AdditionalAuthenticationProviders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlapi.html#cfn-appsync-graphqlapi-additionalauthenticationproviders
type GraphQLApi =
  { "Name" :: String
  , "AuthenticationType" :: String
  , "OpenIDConnectConfig" :: Maybe OpenIDConnectConfig
  , "UserPoolConfig" :: Maybe UserPoolConfig
  , "Tags" :: Maybe Tags
  , "LogConfig" :: Maybe LogConfig
  , "AdditionalAuthenticationProviders" :: Maybe AdditionalAuthenticationProviders
  }

graphQLApi :: { "Name" :: String, "AuthenticationType" :: String } -> GraphQLApi
graphQLApi required =
  merge required
    { "OpenIDConnectConfig" : Nothing
    , "UserPoolConfig" : Nothing
    , "Tags" : Nothing
    , "LogConfig" : Nothing
    , "AdditionalAuthenticationProviders" : Nothing
    }

-- | `AWS::AppSync::GraphQLApi.AdditionalAuthenticationProvider`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html-- |
-- | - `OpenIDConnectConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-openidconnectconfig
-- | - `UserPoolConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-userpoolconfig
-- | - `AuthenticationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-additionalauthenticationprovider.html#cfn-appsync-graphqlapi-additionalauthenticationprovider-authenticationtype
type AdditionalAuthenticationProvider =
  { "AuthenticationType" :: String
  , "OpenIDConnectConfig" :: Maybe OpenIDConnectConfig
  , "UserPoolConfig" :: Maybe CognitoUserPoolConfig
  }

additionalAuthenticationProvider :: { "AuthenticationType" :: String } -> AdditionalAuthenticationProvider
additionalAuthenticationProvider required =
  merge required
    { "OpenIDConnectConfig" : Nothing
    , "UserPoolConfig" : Nothing
    }

type AdditionalAuthenticationProviders = Array AdditionalAuthenticationProvider

-- | `AWS::AppSync::GraphQLApi.CognitoUserPoolConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html-- |
-- | - `AppIdClientRegex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-appidclientregex
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-userpoolid
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-cognitouserpoolconfig.html#cfn-appsync-graphqlapi-cognitouserpoolconfig-awsregion
type CognitoUserPoolConfig =
  { "AppIdClientRegex" :: Maybe String
  , "UserPoolId" :: Maybe String
  , "AwsRegion" :: Maybe String
  }

cognitoUserPoolConfig :: CognitoUserPoolConfig
cognitoUserPoolConfig =
  { "AppIdClientRegex" : Nothing
  , "UserPoolId" : Nothing
  , "AwsRegion" : Nothing
  }

-- | `AWS::AppSync::GraphQLApi.LogConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html-- |
-- | - `CloudWatchLogsRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-cloudwatchlogsrolearn
-- | - `ExcludeVerboseContent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-excludeverbosecontent
-- | - `FieldLogLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-logconfig.html#cfn-appsync-graphqlapi-logconfig-fieldloglevel
type LogConfig =
  { "CloudWatchLogsRoleArn" :: Maybe String
  , "ExcludeVerboseContent" :: Maybe Boolean
  , "FieldLogLevel" :: Maybe String
  }

logConfig :: LogConfig
logConfig =
  { "CloudWatchLogsRoleArn" : Nothing
  , "ExcludeVerboseContent" : Nothing
  , "FieldLogLevel" : Nothing
  }

-- | `AWS::AppSync::GraphQLApi.OpenIDConnectConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html-- |
-- | - `Issuer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-issuer
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-clientid
-- | - `AuthTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-authttl
-- | - `IatTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-openidconnectconfig.html#cfn-appsync-graphqlapi-openidconnectconfig-iatttl
type OpenIDConnectConfig =
  { "Issuer" :: Maybe String
  , "ClientId" :: Maybe String
  , "AuthTTL" :: Maybe Number
  , "IatTTL" :: Maybe Number
  }

openIDConnectConfig :: OpenIDConnectConfig
openIDConnectConfig =
  { "Issuer" : Nothing
  , "ClientId" : Nothing
  , "AuthTTL" : Nothing
  , "IatTTL" : Nothing
  }

-- | `AWS::AppSync::GraphQLApi.UserPoolConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html-- |
-- | - `AppIdClientRegex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-appidclientregex
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-userpoolid
-- | - `AwsRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-awsregion
-- | - `DefaultAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-graphqlapi-userpoolconfig.html#cfn-appsync-graphqlapi-userpoolconfig-defaultaction
type UserPoolConfig =
  { "AppIdClientRegex" :: Maybe String
  , "UserPoolId" :: Maybe String
  , "AwsRegion" :: Maybe String
  , "DefaultAction" :: Maybe String
  }

userPoolConfig :: UserPoolConfig
userPoolConfig =
  { "AppIdClientRegex" : Nothing
  , "UserPoolId" : Nothing
  , "AwsRegion" : Nothing
  , "DefaultAction" : Nothing
  }

type Tags = Array Tag