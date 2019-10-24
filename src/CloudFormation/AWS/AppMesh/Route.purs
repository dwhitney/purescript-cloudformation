module CloudFormation.AWS.AppMesh.Route where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AppMesh::Route`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html
-- |
-- | - `MeshName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-meshname
-- | - `VirtualRouterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-virtualroutername
-- | - `RouteName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-routename
-- | - `Spec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-spec
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-tags
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

-- | `AWS::AppMesh::Route.TcpRouteAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html
-- |
-- | - `WeightedTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html#cfn-appmesh-route-tcprouteaction-weightedtargets
type TcpRouteAction =
  { "WeightedTargets" :: Array WeightedTarget
  }

tcpRouteAction :: { "WeightedTargets" :: Array WeightedTarget } -> TcpRouteAction
tcpRouteAction required =
  required

-- | `AWS::AppMesh::Route.MatchRange`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html
-- |
-- | - `Start`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-start
-- | - `End`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-end
type MatchRange =
  { "Start" :: Int
  , "End" :: Int
  }

matchRange :: { "Start" :: Int, "End" :: Int } -> MatchRange
matchRange required =
  required

-- | `AWS::AppMesh::Route.HttpRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-action
-- | - `RetryPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-retrypolicy
-- | - `Match`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-match
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

-- | `AWS::AppMesh::Route.HttpRouteAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html
-- |
-- | - `WeightedTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html#cfn-appmesh-route-httprouteaction-weightedtargets
type HttpRouteAction =
  { "WeightedTargets" :: Array WeightedTarget
  }

httpRouteAction :: { "WeightedTargets" :: Array WeightedTarget } -> HttpRouteAction
httpRouteAction required =
  required

-- | `AWS::AppMesh::Route.HttpRouteMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html
-- |
-- | - `Scheme`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-scheme
-- | - `Headers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-headers
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-prefix
-- | - `Method`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-method
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

-- | `AWS::AppMesh::Route.HttpRouteHeader`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html
-- |
-- | - `Invert`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-invert
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-name
-- | - `Match`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-match
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

-- | `AWS::AppMesh::Route.RouteSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html
-- |
-- | - `HttpRoute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority
-- | - `TcpRoute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute
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

-- | `AWS::AppMesh::Route.HeaderMatchMethod`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html
-- |
-- | - `Suffix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-suffix
-- | - `Regex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-regex
-- | - `Exact`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-exact
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-prefix
-- | - `Range`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-range
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

-- | `AWS::AppMesh::Route.HttpRetryPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html
-- |
-- | - `MaxRetries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-maxretries
-- | - `PerRetryTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-perretrytimeout
-- | - `HttpRetryEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-httpretryevents
-- | - `TcpRetryEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-tcpretryevents
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

-- | `AWS::AppMesh::Route.TcpRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-action
type TcpRoute =
  { "Action" :: TcpRouteAction
  }

tcpRoute :: { "Action" :: TcpRouteAction } -> TcpRoute
tcpRoute required =
  required

-- | `AWS::AppMesh::Route.WeightedTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html
-- |
-- | - `VirtualNode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-virtualnode
-- | - `Weight`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-weight
type WeightedTarget =
  { "VirtualNode" :: String
  , "Weight" :: Int
  }

weightedTarget :: { "VirtualNode" :: String, "Weight" :: Int } -> WeightedTarget
weightedTarget required =
  required

-- | `AWS::AppMesh::Route.Duration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html#cfn-appmesh-route-duration-value
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html#cfn-appmesh-route-duration-unit
type Duration =
  { "Value" :: Int
  , "Unit" :: String
  }

duration :: { "Value" :: Int, "Unit" :: String } -> Duration
duration required =
  required