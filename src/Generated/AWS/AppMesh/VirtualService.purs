module CloudFormation.AWS.AppMesh.VirtualService where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


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
type VirtualService =
  { "MeshName" :: String
  , "VirtualServiceName" :: String
  , "Spec" :: VirtualServiceSpec
  , "Tags" :: Maybe (Array Tag)
  }

virtualService :: { "MeshName" :: String, "VirtualServiceName" :: String, "Spec" :: VirtualServiceSpec } -> VirtualService
virtualService required =
  merge required
    { "Tags" : Nothing
    }

-- | `AWS::AppMesh::VirtualService.VirtualServiceProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html
-- |
-- | - `VirtualNode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode
-- | - `VirtualRouter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter
type VirtualServiceProvider =
  { "VirtualNode" :: Maybe VirtualNodeServiceProvider
  , "VirtualRouter" :: Maybe VirtualRouterServiceProvider
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
  { "VirtualNodeName" :: String
  }

virtualNodeServiceProvider :: { "VirtualNodeName" :: String } -> VirtualNodeServiceProvider
virtualNodeServiceProvider required =
  required

-- | `AWS::AppMesh::VirtualService.VirtualRouterServiceProvider`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html
-- |
-- | - `VirtualRouterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html#cfn-appmesh-virtualservice-virtualrouterserviceprovider-virtualroutername
type VirtualRouterServiceProvider =
  { "VirtualRouterName" :: String
  }

virtualRouterServiceProvider :: { "VirtualRouterName" :: String } -> VirtualRouterServiceProvider
virtualRouterServiceProvider required =
  required

-- | `AWS::AppMesh::VirtualService.VirtualServiceSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html
-- |
-- | - `Provider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html#cfn-appmesh-virtualservice-virtualservicespec-provider
type VirtualServiceSpec =
  { "Provider" :: Maybe VirtualServiceProvider
  }

virtualServiceSpec :: VirtualServiceSpec
virtualServiceSpec =
  { "Provider" : Nothing
  }