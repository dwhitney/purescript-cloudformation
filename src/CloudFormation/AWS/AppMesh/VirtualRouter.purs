module CloudFormation.AWS.AppMesh.VirtualRouter where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type VirtualRouter =
  { "MeshName" :: String
  , "VirtualRouterName" :: String
  , "Spec" :: VirtualRouterSpec
  , "Tags" :: Maybe (Array Tag)
  }

virtualRouter :: { "MeshName" :: String, "VirtualRouterName" :: String, "Spec" :: VirtualRouterSpec } -> VirtualRouter
virtualRouter required =
  merge required
    { "Tags" : Nothing
    }

type VirtualRouterSpec =
  { "Listeners" :: Array VirtualRouterListener
  }

virtualRouterSpec :: { "Listeners" :: Array VirtualRouterListener } -> VirtualRouterSpec
virtualRouterSpec required =
  required

type VirtualRouterListener =
  { "PortMapping" :: PortMapping
  }

virtualRouterListener :: { "PortMapping" :: PortMapping } -> VirtualRouterListener
virtualRouterListener required =
  required

type PortMapping =
  { "Port" :: Int
  , "Protocol" :: String
  }

portMapping :: { "Port" :: Int, "Protocol" :: String } -> PortMapping
portMapping required =
  required