module CloudFormation.AWS.ApiGateway.Stage where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Foreign.Object (Object)
import Record (merge)


-- | `AWS::ApiGateway::Stage`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html-- |
-- | - `AccessLogSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-accesslogsetting
-- | - `CacheClusterEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclusterenabled
-- | - `CacheClusterSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclustersize
-- | - `CanarySetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-canarysetting
-- | - `ClientCertificateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-clientcertificateid
-- | - `DeploymentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-deploymentid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-description
-- | - `DocumentationVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-documentationversion
-- | - `MethodSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-methodsettings
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-restapiid
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-stagename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tags
-- | - `TracingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tracingenabled
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-variables
type Stage =
  { "RestApiId" :: String
  , "AccessLogSetting" :: Maybe AccessLogSetting
  , "CacheClusterEnabled" :: Maybe Boolean
  , "CacheClusterSize" :: Maybe String
  , "CanarySetting" :: Maybe CanarySetting
  , "ClientCertificateId" :: Maybe String
  , "DeploymentId" :: Maybe String
  , "Description" :: Maybe String
  , "DocumentationVersion" :: Maybe String
  , "MethodSettings" :: Maybe (Array MethodSetting)
  , "StageName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TracingEnabled" :: Maybe Boolean
  , "Variables" :: Maybe (Object String)
  }

stage :: { "RestApiId" :: String } -> Stage
stage required =
  merge required
    { "AccessLogSetting" : Nothing
    , "CacheClusterEnabled" : Nothing
    , "CacheClusterSize" : Nothing
    , "CanarySetting" : Nothing
    , "ClientCertificateId" : Nothing
    , "DeploymentId" : Nothing
    , "Description" : Nothing
    , "DocumentationVersion" : Nothing
    , "MethodSettings" : Nothing
    , "StageName" : Nothing
    , "Tags" : Nothing
    , "TracingEnabled" : Nothing
    , "Variables" : Nothing
    }

-- | `AWS::ApiGateway::Stage.MethodSetting`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html-- |
-- | - `CacheDataEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachedataencrypted
-- | - `CacheTtlInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachettlinseconds
-- | - `CachingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-cachingenabled
-- | - `DataTraceEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-datatraceenabled
-- | - `HttpMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-httpmethod
-- | - `LoggingLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-logginglevel
-- | - `MetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-metricsenabled
-- | - `ResourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-resourcepath
-- | - `ThrottlingBurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingburstlimit
-- | - `ThrottlingRateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-stage-methodsetting.html#cfn-apigateway-stage-methodsetting-throttlingratelimit
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

-- | `AWS::ApiGateway::Stage.AccessLogSetting`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html-- |
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html#cfn-apigateway-stage-accesslogsetting-destinationarn
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html#cfn-apigateway-stage-accesslogsetting-format
type AccessLogSetting =
  { "DestinationArn" :: Maybe String
  , "Format" :: Maybe String
  }

accessLogSetting :: AccessLogSetting
accessLogSetting =
  { "DestinationArn" : Nothing
  , "Format" : Nothing
  }

-- | `AWS::ApiGateway::Stage.CanarySetting`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html-- |
-- | - `DeploymentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-deploymentid
-- | - `PercentTraffic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-percenttraffic
-- | - `StageVariableOverrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-stagevariableoverrides
-- | - `UseStageCache`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-canarysetting.html#cfn-apigateway-stage-canarysetting-usestagecache
type CanarySetting =
  { "DeploymentId" :: Maybe String
  , "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

canarySetting :: CanarySetting
canarySetting =
  { "DeploymentId" : Nothing
  , "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }