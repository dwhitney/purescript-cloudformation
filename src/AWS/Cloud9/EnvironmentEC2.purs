module AWS.Cloud9.EnvironmentEC2 where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EnvironmentEC2 =
  { "InstanceType" :: String
  , "Repositories" :: Maybe (Array Repository)
  , "OwnerArn" :: Maybe String
  , "Description" :: Maybe String
  , "AutomaticStopTimeMinutes" :: Maybe Int
  , "SubnetId" :: Maybe String
  , "Name" :: Maybe String
  }

environmentEC2 :: { "InstanceType" :: String } -> EnvironmentEC2
environmentEC2 required =
  merge required
    { "Repositories" : Nothing
    , "OwnerArn" : Nothing
    , "Description" : Nothing
    , "AutomaticStopTimeMinutes" : Nothing
    , "SubnetId" : Nothing
    , "Name" : Nothing
    }

type Repository =
  { "PathComponent" :: String
  , "RepositoryUrl" :: String
  }

repository :: { "PathComponent" :: String, "RepositoryUrl" :: String } -> Repository
repository required =
  required