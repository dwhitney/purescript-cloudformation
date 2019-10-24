module AWS.Glue.DevEndpoint where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type DevEndpoint =
  { "RoleArn" :: String
  , "ExtraJarsS3Path" :: Maybe String
  , "PublicKey" :: Maybe String
  , "NumberOfNodes" :: Maybe Int
  , "Arguments" :: Maybe Foreign
  , "SubnetId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "WorkerType" :: Maybe String
  , "EndpointName" :: Maybe String
  , "GlueVersion" :: Maybe String
  , "ExtraPythonLibsS3Path" :: Maybe String
  , "SecurityConfiguration" :: Maybe String
  , "NumberOfWorkers" :: Maybe Int
  , "Tags" :: Maybe Foreign
  }

devEndpoint :: { "RoleArn" :: String } -> DevEndpoint
devEndpoint required =
  merge required
    { "ExtraJarsS3Path" : Nothing
    , "PublicKey" : Nothing
    , "NumberOfNodes" : Nothing
    , "Arguments" : Nothing
    , "SubnetId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "WorkerType" : Nothing
    , "EndpointName" : Nothing
    , "GlueVersion" : Nothing
    , "ExtraPythonLibsS3Path" : Nothing
    , "SecurityConfiguration" : Nothing
    , "NumberOfWorkers" : Nothing
    , "Tags" : Nothing
    }