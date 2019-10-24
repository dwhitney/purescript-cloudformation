module CloudFormation.AWS.WorkSpaces.Workspace where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Workspace =
  { "BundleId" :: String
  , "DirectoryId" :: String
  , "UserName" :: String
  , "RootVolumeEncryptionEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "UserVolumeEncryptionEnabled" :: Maybe Boolean
  , "VolumeEncryptionKey" :: Maybe String
  , "WorkspaceProperties" :: Maybe WorkspaceProperties
  }

workspace :: { "BundleId" :: String, "DirectoryId" :: String, "UserName" :: String } -> Workspace
workspace required =
  merge required
    { "RootVolumeEncryptionEnabled" : Nothing
    , "Tags" : Nothing
    , "UserVolumeEncryptionEnabled" : Nothing
    , "VolumeEncryptionKey" : Nothing
    , "WorkspaceProperties" : Nothing
    }

type WorkspaceProperties =
  { "ComputeTypeName" :: Maybe String
  , "RootVolumeSizeGib" :: Maybe Int
  , "RunningMode" :: Maybe String
  , "RunningModeAutoStopTimeoutInMinutes" :: Maybe Int
  , "UserVolumeSizeGib" :: Maybe Int
  }

workspaceProperties :: WorkspaceProperties
workspaceProperties =
  { "ComputeTypeName" : Nothing
  , "RootVolumeSizeGib" : Nothing
  , "RunningMode" : Nothing
  , "RunningModeAutoStopTimeoutInMinutes" : Nothing
  , "UserVolumeSizeGib" : Nothing
  }