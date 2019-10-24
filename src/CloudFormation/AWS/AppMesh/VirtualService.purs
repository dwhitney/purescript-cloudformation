module CloudFormation.AWS.AppMesh.VirtualService where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


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

type VirtualServiceProvider =
  { "VirtualNode" :: Maybe VirtualNodeServiceProvider
  , "VirtualRouter" :: Maybe VirtualRouterServiceProvider
  }

virtualServiceProvider :: VirtualServiceProvider
virtualServiceProvider =
  { "VirtualNode" : Nothing
  , "VirtualRouter" : Nothing
  }

type VirtualNodeServiceProvider =
  { "VirtualNodeName" :: String
  }

virtualNodeServiceProvider :: { "VirtualNodeName" :: String } -> VirtualNodeServiceProvider
virtualNodeServiceProvider required =
  required

type VirtualRouterServiceProvider =
  { "VirtualRouterName" :: String
  }

virtualRouterServiceProvider :: { "VirtualRouterName" :: String } -> VirtualRouterServiceProvider
virtualRouterServiceProvider required =
  required

type VirtualServiceSpec =
  { "Provider" :: Maybe VirtualServiceProvider
  }

virtualServiceSpec :: VirtualServiceSpec
virtualServiceSpec =
  { "Provider" : Nothing
  }