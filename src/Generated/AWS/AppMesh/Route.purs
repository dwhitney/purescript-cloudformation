module CloudFormation.AWS.AppMesh.Route where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Route = Route
  { "MeshName" :: Value String
  , "VirtualRouterName" :: Value String
  , "RouteName" :: Value String
  , "Spec" :: Value RouteSpec
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeRoute :: Newtype Route _
derive newtype instance writeRoute :: WriteForeign Route
instance resourceRoute :: Resource Route where type_ _ = "AWS::AppMesh::Route"

route :: { "MeshName" :: Value String, "VirtualRouterName" :: Value String, "RouteName" :: Value String, "Spec" :: Value RouteSpec } -> Route
route required = Route
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::AppMesh::Route.TcpRouteAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html
-- |
-- | - `WeightedTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html#cfn-appmesh-route-tcprouteaction-weightedtargets
type TcpRouteAction =
  { "WeightedTargets" :: Value (Array WeightedTarget)
  }

tcpRouteAction :: { "WeightedTargets" :: Value (Array WeightedTarget) } -> TcpRouteAction
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
  { "Start" :: Value Int
  , "End" :: Value Int
  }

matchRange :: { "Start" :: Value Int, "End" :: Value Int } -> MatchRange
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
  { "Action" :: Value HttpRouteAction
  , "Match" :: Value HttpRouteMatch
  , "RetryPolicy" :: Maybe (Value HttpRetryPolicy)
  }

httpRoute :: { "Action" :: Value HttpRouteAction, "Match" :: Value HttpRouteMatch } -> HttpRoute
httpRoute required =
  (merge required
    { "RetryPolicy" : Nothing
    })

-- | `AWS::AppMesh::Route.HttpRouteAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html
-- |
-- | - `WeightedTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html#cfn-appmesh-route-httprouteaction-weightedtargets
type HttpRouteAction =
  { "WeightedTargets" :: Value (Array WeightedTarget)
  }

httpRouteAction :: { "WeightedTargets" :: Value (Array WeightedTarget) } -> HttpRouteAction
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
  { "Prefix" :: Value String
  , "Scheme" :: Maybe (Value String)
  , "Headers" :: Maybe (Value (Array HttpRouteHeader))
  , "Method" :: Maybe (Value String)
  }

httpRouteMatch :: { "Prefix" :: Value String } -> HttpRouteMatch
httpRouteMatch required =
  (merge required
    { "Scheme" : Nothing
    , "Headers" : Nothing
    , "Method" : Nothing
    })

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
  { "Name" :: Value String
  , "Invert" :: Maybe (Value Boolean)
  , "Match" :: Maybe (Value HeaderMatchMethod)
  }

httpRouteHeader :: { "Name" :: Value String } -> HttpRouteHeader
httpRouteHeader required =
  (merge required
    { "Invert" : Nothing
    , "Match" : Nothing
    })

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
  { "HttpRoute" :: Maybe (Value HttpRoute)
  , "Priority" :: Maybe (Value Int)
  , "TcpRoute" :: Maybe (Value TcpRoute)
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
  { "Suffix" :: Maybe (Value String)
  , "Regex" :: Maybe (Value String)
  , "Exact" :: Maybe (Value String)
  , "Prefix" :: Maybe (Value String)
  , "Range" :: Maybe (Value MatchRange)
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
  { "MaxRetries" :: Value Int
  , "PerRetryTimeout" :: Value Duration
  , "HttpRetryEvents" :: Maybe (Value (Array String))
  , "TcpRetryEvents" :: Maybe (Value (Array String))
  }

httpRetryPolicy :: { "MaxRetries" :: Value Int, "PerRetryTimeout" :: Value Duration } -> HttpRetryPolicy
httpRetryPolicy required =
  (merge required
    { "HttpRetryEvents" : Nothing
    , "TcpRetryEvents" : Nothing
    })

-- | `AWS::AppMesh::Route.TcpRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-action
type TcpRoute =
  { "Action" :: Value TcpRouteAction
  }

tcpRoute :: { "Action" :: Value TcpRouteAction } -> TcpRoute
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
  { "VirtualNode" :: Value String
  , "Weight" :: Value Int
  }

weightedTarget :: { "VirtualNode" :: Value String, "Weight" :: Value Int } -> WeightedTarget
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
  { "Value" :: Value Int
  , "Unit" :: Value String
  }

duration :: { "Value" :: Value Int, "Unit" :: Value String } -> Duration
duration required =
  required