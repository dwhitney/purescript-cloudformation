module CloudFormation.AWS.ApiGateway.Deployment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "RestApiId" :: Value String
  , "DeploymentCanarySettings" :: Maybe (Value DeploymentCanarySettings)
  , "Description" :: Maybe (Value String)
  , "StageDescription" :: Maybe (Value StageDescription)
  , "StageName" :: Maybe (Value String)
  }

derive instance newtypeDeployment :: Newtype Deployment _
derive newtype instance writeDeployment :: WriteForeign Deployment
instance resourceDeployment :: Resource Deployment where type_ _ = "AWS::ApiGateway::Deployment"

deployment :: { "RestApiId" :: Value String } -> Deployment
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
  { "DestinationArn" :: Maybe (Value String)
  , "Format" :: Maybe (Value String)
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
  { "PercentTraffic" :: Maybe (Value Number)
  , "StageVariableOverrides" :: Maybe (Value (Object String))
  , "UseStageCache" :: Maybe (Value Boolean)
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
  { "AccessLogSetting" :: Maybe (Value AccessLogSetting)
  , "CacheClusterEnabled" :: Maybe (Value Boolean)
  , "CacheClusterSize" :: Maybe (Value String)
  , "CacheDataEncrypted" :: Maybe (Value Boolean)
  , "CacheTtlInSeconds" :: Maybe (Value Int)
  , "CachingEnabled" :: Maybe (Value Boolean)
  , "CanarySetting" :: Maybe (Value CanarySetting)
  , "ClientCertificateId" :: Maybe (Value String)
  , "DataTraceEnabled" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "DocumentationVersion" :: Maybe (Value String)
  , "LoggingLevel" :: Maybe (Value String)
  , "MethodSettings" :: Maybe (Value (Array MethodSetting))
  , "MetricsEnabled" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  , "ThrottlingBurstLimit" :: Maybe (Value Int)
  , "ThrottlingRateLimit" :: Maybe (Value Number)
  , "TracingEnabled" :: Maybe (Value Boolean)
  , "Variables" :: Maybe (Value (Object String))
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
  { "CacheDataEncrypted" :: Maybe (Value Boolean)
  , "CacheTtlInSeconds" :: Maybe (Value Int)
  , "CachingEnabled" :: Maybe (Value Boolean)
  , "DataTraceEnabled" :: Maybe (Value Boolean)
  , "HttpMethod" :: Maybe (Value String)
  , "LoggingLevel" :: Maybe (Value String)
  , "MetricsEnabled" :: Maybe (Value Boolean)
  , "ResourcePath" :: Maybe (Value String)
  , "ThrottlingBurstLimit" :: Maybe (Value Int)
  , "ThrottlingRateLimit" :: Maybe (Value Number)
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
  { "PercentTraffic" :: Maybe (Value Number)
  , "StageVariableOverrides" :: Maybe (Value (Object String))
  , "UseStageCache" :: Maybe (Value Boolean)
  }

deploymentCanarySettings :: DeploymentCanarySettings
deploymentCanarySettings =
  { "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }