module CloudFormation.AWS.AppMesh.VirtualRouter where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "MeshName" :: Value String
  , "VirtualRouterName" :: Value String
  , "Spec" :: Value VirtualRouterSpec
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVirtualRouter :: Newtype VirtualRouter _
derive newtype instance writeVirtualRouter :: WriteForeign VirtualRouter
instance resourceVirtualRouter :: Resource VirtualRouter where type_ _ = "AWS::AppMesh::VirtualRouter"

virtualRouter :: { "MeshName" :: Value String, "VirtualRouterName" :: Value String, "Spec" :: Value VirtualRouterSpec } -> VirtualRouter
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
  { "Listeners" :: Value (Array VirtualRouterListener)
  }

virtualRouterSpec :: { "Listeners" :: Value (Array VirtualRouterListener) } -> VirtualRouterSpec
virtualRouterSpec required =
  required

-- | `AWS::AppMesh::VirtualRouter.VirtualRouterListener`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html
-- |
-- | - `PortMapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html#cfn-appmesh-virtualrouter-virtualrouterlistener-portmapping
type VirtualRouterListener =
  { "PortMapping" :: Value PortMapping
  }

virtualRouterListener :: { "PortMapping" :: Value PortMapping } -> VirtualRouterListener
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
  { "Port" :: Value Int
  , "Protocol" :: Value String
  }

portMapping :: { "Port" :: Value Int, "Protocol" :: Value String } -> PortMapping
portMapping required =
  required