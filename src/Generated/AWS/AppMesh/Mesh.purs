module CloudFormation.AWS.AppMesh.Mesh where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppMesh::Mesh`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html
-- |
-- | - `MeshName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-meshname
-- | - `Spec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-spec
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-tags
newtype Mesh = Mesh
  { "MeshName" :: String
  , "Spec" :: Maybe MeshSpec
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeMesh :: Newtype Mesh _
instance resourceMesh :: Resource Mesh where type_ _ = "AWS::AppMesh::Mesh"

mesh :: { "MeshName" :: String } -> Mesh
mesh required = Mesh
  (merge required
    { "Spec" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::AppMesh::Mesh.EgressFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html#cfn-appmesh-mesh-egressfilter-type
type EgressFilter =
  { "Type" :: String
  }

egressFilter :: { "Type" :: String } -> EgressFilter
egressFilter required =
  required

-- | `AWS::AppMesh::Mesh.MeshSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html
-- |
-- | - `EgressFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-egressfilter
type MeshSpec =
  { "EgressFilter" :: Maybe EgressFilter
  }

meshSpec :: MeshSpec
meshSpec =
  { "EgressFilter" : Nothing
  }