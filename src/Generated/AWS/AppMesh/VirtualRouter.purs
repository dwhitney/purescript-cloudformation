module CloudFormation.AWS.AppMesh.VirtualRouter where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppMesh::VirtualRouter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html
-- |
-- | - `MeshName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-meshname
-- | - `VirtualRouterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-virtualroutername
-- | - `Spec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-spec
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-tags
newtype VirtualRouter = VirtualRouter
  { "MeshName" :: String
  , "VirtualRouterName" :: String
  , "Spec" :: VirtualRouterSpec
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeVirtualRouter :: Newtype VirtualRouter _
instance resourceVirtualRouter :: Resource VirtualRouter where type_ _ = "AWS::AppMesh::VirtualRouter"

virtualRouter :: { "MeshName" :: String, "VirtualRouterName" :: String, "Spec" :: VirtualRouterSpec } -> VirtualRouter
virtualRouter required = VirtualRouter
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::AppMesh::VirtualRouter.VirtualRouterSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html
-- |
-- | - `Listeners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html#cfn-appmesh-virtualrouter-virtualrouterspec-listeners
type VirtualRouterSpec =
  { "Listeners" :: Array VirtualRouterListener
  }

virtualRouterSpec :: { "Listeners" :: Array VirtualRouterListener } -> VirtualRouterSpec
virtualRouterSpec required =
  required

-- | `AWS::AppMesh::VirtualRouter.VirtualRouterListener`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html
-- |
-- | - `PortMapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html#cfn-appmesh-virtualrouter-virtualrouterlistener-portmapping
type VirtualRouterListener =
  { "PortMapping" :: PortMapping
  }

virtualRouterListener :: { "PortMapping" :: PortMapping } -> VirtualRouterListener
virtualRouterListener required =
  required

-- | `AWS::AppMesh::VirtualRouter.PortMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html
-- |
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html#cfn-appmesh-virtualrouter-portmapping-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html#cfn-appmesh-virtualrouter-portmapping-protocol
type PortMapping =
  { "Port" :: Int
  , "Protocol" :: String
  }

portMapping :: { "Port" :: Int, "Protocol" :: String } -> PortMapping
portMapping required =
  required