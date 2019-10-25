module CloudFormation.AWS.AppMesh.VirtualService where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppMesh::VirtualService`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html
-- |
-- | - `MeshName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-meshname
-- | - `VirtualServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-virtualservicename
-- | - `Spec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-spec
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-tags
newtype VirtualService = VirtualService
  { "MeshName" :: Value String
  , "VirtualServiceName" :: Value String
  , "Spec" :: Value VirtualServiceSpec
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVirtualService :: Newtype VirtualService _
derive newtype instance writeVirtualService :: WriteForeign VirtualService
instance resourceVirtualService :: Resource VirtualService where type_ _ = "AWS::AppMesh::VirtualService"

virtualService :: { "MeshName" :: Value String, "VirtualServiceName" :: Value String, "Spec" :: Value VirtualServiceSpec } -> VirtualService
virtualService required = VirtualService
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::AppMesh::VirtualService.VirtualServiceProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html
-- |
-- | - `VirtualNode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode
-- | - `VirtualRouter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter
type VirtualServiceProvider =
  { "VirtualNode" :: Maybe (Value VirtualNodeServiceProvider)
  , "VirtualRouter" :: Maybe (Value VirtualRouterServiceProvider)
  }

virtualServiceProvider :: VirtualServiceProvider
virtualServiceProvider =
  { "VirtualNode" : Nothing
  , "VirtualRouter" : Nothing
  }

-- | `AWS::AppMesh::VirtualService.VirtualNodeServiceProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualnodeserviceprovider.html
-- |
-- | - `VirtualNodeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualnodeserviceprovider.html#cfn-appmesh-virtualservice-virtualnodeserviceprovider-virtualnodename
type VirtualNodeServiceProvider =
  { "VirtualNodeName" :: Value String
  }

virtualNodeServiceProvider :: { "VirtualNodeName" :: Value String } -> VirtualNodeServiceProvider
virtualNodeServiceProvider required =
  required

-- | `AWS::AppMesh::VirtualService.VirtualRouterServiceProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html
-- |
-- | - `VirtualRouterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html#cfn-appmesh-virtualservice-virtualrouterserviceprovider-virtualroutername
type VirtualRouterServiceProvider =
  { "VirtualRouterName" :: Value String
  }

virtualRouterServiceProvider :: { "VirtualRouterName" :: Value String } -> VirtualRouterServiceProvider
virtualRouterServiceProvider required =
  required

-- | `AWS::AppMesh::VirtualService.VirtualServiceSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html
-- |
-- | - `Provider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html#cfn-appmesh-virtualservice-virtualservicespec-provider
type VirtualServiceSpec =
  { "Provider" :: Maybe (Value VirtualServiceProvider)
  }

virtualServiceSpec :: VirtualServiceSpec
virtualServiceSpec =
  { "Provider" : Nothing
  }