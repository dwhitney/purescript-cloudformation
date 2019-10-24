module AWS.AppMesh.Route where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type Route =
  { "MeshName" :: String
  , "VirtualRouterName" :: String
  , "RouteName" :: String
  , "Spec" :: RouteSpec
  , "Tags" :: Maybe (Array Tag)
  }

route :: { "MeshName" :: String, "VirtualRouterName" :: String, "RouteName" :: String, "Spec" :: RouteSpec } -> Route
route required =
  merge required
    { "Tags" : Nothing
    }

type TcpRouteAction =
  { "WeightedTargets" :: Array WeightedTarget
  }

tcpRouteAction :: { "WeightedTargets" :: Array WeightedTarget } -> TcpRouteAction
tcpRouteAction required =
  required

type MatchRange =
  { "Start" :: Int
  , "End" :: Int
  }

matchRange :: { "Start" :: Int, "End" :: Int } -> MatchRange
matchRange required =
  required

type HttpRoute =
  { "Action" :: HttpRouteAction
  , "Match" :: HttpRouteMatch
  , "RetryPolicy" :: Maybe HttpRetryPolicy
  }

httpRoute :: { "Action" :: HttpRouteAction, "Match" :: HttpRouteMatch } -> HttpRoute
httpRoute required =
  merge required
    { "RetryPolicy" : Nothing
    }

type HttpRouteAction =
  { "WeightedTargets" :: Array WeightedTarget
  }

httpRouteAction :: { "WeightedTargets" :: Array WeightedTarget } -> HttpRouteAction
httpRouteAction required =
  required

type HttpRouteMatch =
  { "Prefix" :: String
  , "Scheme" :: Maybe String
  , "Headers" :: Maybe (Array HttpRouteHeader)
  , "Method" :: Maybe String
  }

httpRouteMatch :: { "Prefix" :: String } -> HttpRouteMatch
httpRouteMatch required =
  merge required
    { "Scheme" : Nothing
    , "Headers" : Nothing
    , "Method" : Nothing
    }

type HttpRouteHeader =
  { "Name" :: String
  , "Invert" :: Maybe Boolean
  , "Match" :: Maybe HeaderMatchMethod
  }

httpRouteHeader :: { "Name" :: String } -> HttpRouteHeader
httpRouteHeader required =
  merge required
    { "Invert" : Nothing
    , "Match" : Nothing
    }

type RouteSpec =
  { "HttpRoute" :: Maybe HttpRoute
  , "Priority" :: Maybe Int
  , "TcpRoute" :: Maybe TcpRoute
  }

routeSpec :: RouteSpec
routeSpec =
  { "HttpRoute" : Nothing
  , "Priority" : Nothing
  , "TcpRoute" : Nothing
  }

type HeaderMatchMethod =
  { "Suffix" :: Maybe String
  , "Regex" :: Maybe String
  , "Exact" :: Maybe String
  , "Prefix" :: Maybe String
  , "Range" :: Maybe MatchRange
  }

headerMatchMethod :: HeaderMatchMethod
headerMatchMethod =
  { "Suffix" : Nothing
  , "Regex" : Nothing
  , "Exact" : Nothing
  , "Prefix" : Nothing
  , "Range" : Nothing
  }

type HttpRetryPolicy =
  { "MaxRetries" :: Int
  , "PerRetryTimeout" :: Duration
  , "HttpRetryEvents" :: Maybe (Array String)
  , "TcpRetryEvents" :: Maybe (Array String)
  }

httpRetryPolicy :: { "MaxRetries" :: Int, "PerRetryTimeout" :: Duration } -> HttpRetryPolicy
httpRetryPolicy required =
  merge required
    { "HttpRetryEvents" : Nothing
    , "TcpRetryEvents" : Nothing
    }

type TcpRoute =
  { "Action" :: TcpRouteAction
  }

tcpRoute :: { "Action" :: TcpRouteAction } -> TcpRoute
tcpRoute required =
  required

type WeightedTarget =
  { "VirtualNode" :: String
  , "Weight" :: Int
  }

weightedTarget :: { "VirtualNode" :: String, "Weight" :: Int } -> WeightedTarget
weightedTarget required =
  required

type Duration =
  { "Value" :: Int
  , "Unit" :: String
  }

duration :: { "Value" :: Int, "Unit" :: String } -> Duration
duration required =
  required