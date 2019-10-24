module AWS.AppMesh.Mesh where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Mesh =
  { "MeshName" :: String
  , "Spec" :: Maybe MeshSpec
  , "Tags" :: Maybe (Array Tag)
  }

mesh :: { "MeshName" :: String } -> Mesh
mesh required =
  merge required
    { "Spec" : Nothing
    , "Tags" : Nothing
    }

type EgressFilter =
  { "Type" :: String
  }

egressFilter :: { "Type" :: String } -> EgressFilter
egressFilter required =
  required

type MeshSpec =
  { "EgressFilter" :: Maybe EgressFilter
  }

meshSpec :: MeshSpec
meshSpec =
  { "EgressFilter" : Nothing
  }