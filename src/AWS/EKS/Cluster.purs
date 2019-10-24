module AWS.EKS.Cluster where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Cluster =
  { "RoleArn" :: String
  , "ResourcesVpcConfig" :: ResourcesVpcConfig
  , "Version" :: Maybe String
  , "Name" :: Maybe String
  }

cluster :: { "RoleArn" :: String, "ResourcesVpcConfig" :: ResourcesVpcConfig } -> Cluster
cluster required =
  merge required
    { "Version" : Nothing
    , "Name" : Nothing
    }

type ResourcesVpcConfig =
  { "SubnetIds" :: Array String
  , "SecurityGroupIds" :: Maybe (Array String)
  }

resourcesVpcConfig :: { "SubnetIds" :: Array String } -> ResourcesVpcConfig
resourcesVpcConfig required =
  merge required
    { "SecurityGroupIds" : Nothing
    }