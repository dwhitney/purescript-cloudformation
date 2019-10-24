module CloudFormation.AWS.ApiGatewayV2.Stage where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DeploymentId" :: String
  , "StageName" :: String
  , "ApiId" :: String
  , "ClientCertificateId" :: Maybe String
  , "Description" :: Maybe String
  , "AccessLogSettings" :: Maybe AccessLogSettings
  , "RouteSettings" :: Maybe CF.Json
  , "StageVariables" :: Maybe CF.Json
  , "DefaultRouteSettings" :: Maybe RouteSettings
  , "Tags" :: Maybe CF.Json
  }

derive instance newtypeStage :: Newtype Stage _
instance resourceStage :: Resource Stage where type_ _ = "AWS::ApiGatewayV2::Stage"

stage :: { "DeploymentId" :: String, "StageName" :: String, "ApiId" :: String } -> Stage
stage required = Stage
  (merge required
    { "ClientCertificateId" : Nothing
    , "Description" : Nothing
    , "AccessLogSettings" : Nothing
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
  { "LoggingLevel" :: Maybe String
  , "DataTraceEnabled" :: Maybe Boolean
  , "ThrottlingBurstLimit" :: Maybe Int
  , "DetailedMetricsEnabled" :: Maybe Boolean
  , "ThrottlingRateLimit" :: Maybe Number
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
  { "Format" :: Maybe String
  , "DestinationArn" :: Maybe String
  }

accessLogSettings :: AccessLogSettings
accessLogSettings =
  { "Format" : Nothing
  , "DestinationArn" : Nothing
  }