module CloudFormation.AWS.ApiGatewayV2.Stage where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::Stage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html
-- |
-- | - `ClientCertificateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-clientcertificateid
-- | - `DeploymentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-deploymentid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-description
-- | - `AccessLogSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-accesslogsettings
-- | - `AutoDeploy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-autodeploy
-- | - `RouteSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-routesettings
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagename
-- | - `StageVariables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagevariables
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-apiid
-- | - `DefaultRouteSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-defaultroutesettings
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-tags
newtype Stage = Stage
  { "StageName" :: Value String
  , "ApiId" :: Value String
  , "ClientCertificateId" :: Maybe (Value String)
  , "DeploymentId" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "AccessLogSettings" :: Maybe (Value AccessLogSettings)
  , "AutoDeploy" :: Maybe (Value Boolean)
  , "RouteSettings" :: Maybe (Value CF.Json)
  , "StageVariables" :: Maybe (Value CF.Json)
  , "DefaultRouteSettings" :: Maybe (Value RouteSettings)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeStage :: Newtype Stage _
derive newtype instance writeStage :: WriteForeign Stage
instance resourceStage :: Resource Stage where type_ _ = "AWS::ApiGatewayV2::Stage"

stage :: { "StageName" :: Value String, "ApiId" :: Value String } -> Stage
stage required = Stage
  (merge required
    { "ClientCertificateId" : Nothing
    , "DeploymentId" : Nothing
    , "Description" : Nothing
    , "AccessLogSettings" : Nothing
    , "AutoDeploy" : Nothing
    , "RouteSettings" : Nothing
    , "StageVariables" : Nothing
    , "DefaultRouteSettings" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::ApiGatewayV2::Stage.RouteSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html
-- |
-- | - `LoggingLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-logginglevel
-- | - `DataTraceEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-datatraceenabled
-- | - `ThrottlingBurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingburstlimit
-- | - `DetailedMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-detailedmetricsenabled
-- | - `ThrottlingRateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-routesettings.html#cfn-apigatewayv2-stage-routesettings-throttlingratelimit
type RouteSettings =
  { "LoggingLevel" :: Maybe (Value String)
  , "DataTraceEnabled" :: Maybe (Value Boolean)
  , "ThrottlingBurstLimit" :: Maybe (Value Int)
  , "DetailedMetricsEnabled" :: Maybe (Value Boolean)
  , "ThrottlingRateLimit" :: Maybe (Value Number)
  }

routeSettings :: RouteSettings
routeSettings =
  { "LoggingLevel" : Nothing
  , "DataTraceEnabled" : Nothing
  , "ThrottlingBurstLimit" : Nothing
  , "DetailedMetricsEnabled" : Nothing
  , "ThrottlingRateLimit" : Nothing
  }

-- | `AWS::ApiGatewayV2::Stage.AccessLogSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html
-- |
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html#cfn-apigatewayv2-stage-accesslogsettings-format
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html#cfn-apigatewayv2-stage-accesslogsettings-destinationarn
type AccessLogSettings =
  { "Format" :: Maybe (Value String)
  , "DestinationArn" :: Maybe (Value String)
  }

accessLogSettings :: AccessLogSettings
accessLogSettings =
  { "Format" : Nothing
  , "DestinationArn" : Nothing
  }