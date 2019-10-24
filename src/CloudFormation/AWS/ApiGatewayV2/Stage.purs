module CloudFormation.AWS.ApiGatewayV2.Stage where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Stage =
  { "DeploymentId" :: String
  , "StageName" :: String
  , "ApiId" :: String
  , "ClientCertificateId" :: Maybe String
  , "Description" :: Maybe String
  , "AccessLogSettings" :: Maybe AccessLogSettings
  , "RouteSettings" :: Maybe Foreign
  , "StageVariables" :: Maybe Foreign
  , "DefaultRouteSettings" :: Maybe RouteSettings
  , "Tags" :: Maybe Foreign
  }

stage :: { "DeploymentId" :: String, "StageName" :: String, "ApiId" :: String } -> Stage
stage required =
  merge required
    { "ClientCertificateId" : Nothing
    , "Description" : Nothing
    , "AccessLogSettings" : Nothing
    , "RouteSettings" : Nothing
    , "StageVariables" : Nothing
    , "DefaultRouteSettings" : Nothing
    , "Tags" : Nothing
    }

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

type AccessLogSettings =
  { "Format" :: Maybe String
  , "DestinationArn" :: Maybe String
  }

accessLogSettings :: AccessLogSettings
accessLogSettings =
  { "Format" : Nothing
  , "DestinationArn" : Nothing
  }