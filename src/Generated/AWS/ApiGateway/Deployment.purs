module CloudFormation.AWS.ApiGateway.Deployment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)


-- | `AWS::ApiGateway::Deployment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html
-- |
-- | - `DeploymentCanarySettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-deploymentcanarysettings
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-description
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-restapiid
-- | - `StageDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagedescription
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagename
newtype Deployment = Deployment
  { "RestApiId" :: String
  , "DeploymentCanarySettings" :: Maybe DeploymentCanarySettings
  , "Description" :: Maybe String
  , "StageDescription" :: Maybe StageDescription
  , "StageName" :: Maybe String
  }

derive instance newtypeDeployment :: Newtype Deployment _
instance resourceDeployment :: Resource Deployment where type_ _ = "AWS::ApiGateway::Deployment"

deployment :: { "RestApiId" :: String } -> Deployment
deployment required = Deployment
  (merge required
    { "DeploymentCanarySettings" : Nothing
    , "Description" : Nothing
    , "StageDescription" : Nothing
    , "StageName" : Nothing
    })

-- | `AWS::ApiGateway::Deployment.AccessLogSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html
-- |
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-destinationarn
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-format
type AccessLogSetting =
  { "DestinationArn" :: Maybe String
  , "Format" :: Maybe String
  }

accessLogSetting :: AccessLogSetting
accessLogSetting =
  { "DestinationArn" : Nothing
  , "Format" : Nothing
  }

-- | `AWS::ApiGateway::Deployment.CanarySetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html
-- |
-- | - `PercentTraffic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-percenttraffic
-- | - `StageVariableOverrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-stagevariableoverrides
-- | - `UseStageCache`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-canarysetting.html#cfn-apigateway-deployment-canarysetting-usestagecache
type CanarySetting =
  { "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

canarySetting :: CanarySetting
canarySetting =
  { "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }

-- | `AWS::ApiGateway::Deployment.StageDescription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html
-- |
-- | - `AccessLogSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-accesslogsetting
-- | - `CacheClusterEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclusterenabled
-- | - `CacheClusterSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cacheclustersize
-- | - `CacheDataEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachedataencrypted
-- | - `CacheTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachettlinseconds
-- | - `CachingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-cachingenabled
-- | - `CanarySetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-canarysetting
-- | - `ClientCertificateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-clientcertificateid
-- | - `DataTraceEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-datatraceenabled
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-description
-- | - `DocumentationVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-documentationversion
-- | - `LoggingLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-logginglevel
-- | - `MethodSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-methodsettings
-- | - `MetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-metricsenabled
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-tags
-- | - `ThrottlingBurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingburstlimit
-- | - `ThrottlingRateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-throttlingratelimit
-- | - `TracingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-tracingenabled
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html#cfn-apigateway-deployment-stagedescription-variables
type StageDescription =
  { "AccessLogSetting" :: Maybe AccessLogSetting
  , "CacheClusterEnabled" :: Maybe Boolean
  , "CacheClusterSize" :: Maybe String
  , "CacheDataEncrypted" :: Maybe Boolean
  , "CacheTtlInSeconds" :: Maybe Int
  , "CachingEnabled" :: Maybe Boolean
  , "CanarySetting" :: Maybe CanarySetting
  , "ClientCertificateId" :: Maybe String
  , "DataTraceEnabled" :: Maybe Boolean
  , "Description" :: Maybe String
  , "DocumentationVersion" :: Maybe String
  , "LoggingLevel" :: Maybe String
  , "MethodSettings" :: Maybe (Array MethodSetting)
  , "MetricsEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "ThrottlingBurstLimit" :: Maybe Int
  , "ThrottlingRateLimit" :: Maybe Number
  , "TracingEnabled" :: Maybe Boolean
  , "Variables" :: Maybe (Object String)
  }

stageDescription :: StageDescription
stageDescription =
  { "AccessLogSetting" : Nothing
  , "CacheClusterEnabled" : Nothing
  , "CacheClusterSize" : Nothing
  , "CacheDataEncrypted" : Nothing
  , "CacheTtlInSeconds" : Nothing
  , "CachingEnabled" : Nothing
  , "CanarySetting" : Nothing
  , "ClientCertificateId" : Nothing
  , "DataTraceEnabled" : Nothing
  , "Description" : Nothing
  , "DocumentationVersion" : Nothing
  , "LoggingLevel" : Nothing
  , "MethodSettings" : Nothing
  , "MetricsEnabled" : Nothing
  , "Tags" : Nothing
  , "ThrottlingBurstLimit" : Nothing
  , "ThrottlingRateLimit" : Nothing
  , "TracingEnabled" : Nothing
  , "Variables" : Nothing
  }

-- | `AWS::ApiGateway::Deployment.MethodSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html
-- |
-- | - `CacheDataEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachedataencrypted
-- | - `CacheTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachettlinseconds
-- | - `CachingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachingenabled
-- | - `DataTraceEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-datatraceenabled
-- | - `HttpMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-httpmethod
-- | - `LoggingLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-logginglevel
-- | - `MetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-metricsenabled
-- | - `ResourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-resourcepath
-- | - `ThrottlingBurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingburstlimit
-- | - `ThrottlingRateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingratelimit
type MethodSetting =
  { "CacheDataEncrypted" :: Maybe Boolean
  , "CacheTtlInSeconds" :: Maybe Int
  , "CachingEnabled" :: Maybe Boolean
  , "DataTraceEnabled" :: Maybe Boolean
  , "HttpMethod" :: Maybe String
  , "LoggingLevel" :: Maybe String
  , "MetricsEnabled" :: Maybe Boolean
  , "ResourcePath" :: Maybe String
  , "ThrottlingBurstLimit" :: Maybe Int
  , "ThrottlingRateLimit" :: Maybe Number
  }

methodSetting :: MethodSetting
methodSetting =
  { "CacheDataEncrypted" : Nothing
  , "CacheTtlInSeconds" : Nothing
  , "CachingEnabled" : Nothing
  , "DataTraceEnabled" : Nothing
  , "HttpMethod" : Nothing
  , "LoggingLevel" : Nothing
  , "MetricsEnabled" : Nothing
  , "ResourcePath" : Nothing
  , "ThrottlingBurstLimit" : Nothing
  , "ThrottlingRateLimit" : Nothing
  }

-- | `AWS::ApiGateway::Deployment.DeploymentCanarySettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html
-- |
-- | - `PercentTraffic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-percenttraffic
-- | - `StageVariableOverrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-stagevariableoverrides
-- | - `UseStageCache`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-usestagecache
type DeploymentCanarySettings =
  { "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

deploymentCanarySettings :: DeploymentCanarySettings
deploymentCanarySettings =
  { "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }