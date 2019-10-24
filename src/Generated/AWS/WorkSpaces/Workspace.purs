module CloudFormation.AWS.WorkSpaces.Workspace where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WorkSpaces::Workspace`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html
-- |
-- | - `BundleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-bundleid
-- | - `DirectoryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-directoryid
-- | - `RootVolumeEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-rootvolumeencryptionenabled
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-tags
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-username
-- | - `UserVolumeEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-uservolumeencryptionenabled
-- | - `VolumeEncryptionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-volumeencryptionkey
-- | - `WorkspaceProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspace.html#cfn-workspaces-workspace-workspaceproperties
newtype Workspace = Workspace
  { "BundleId" :: String
  , "DirectoryId" :: String
  , "UserName" :: String
  , "RootVolumeEncryptionEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "UserVolumeEncryptionEnabled" :: Maybe Boolean
  , "VolumeEncryptionKey" :: Maybe String
  , "WorkspaceProperties" :: Maybe WorkspaceProperties
  }

derive instance newtypeWorkspace :: Newtype Workspace _
instance resourceWorkspace :: Resource Workspace where type_ _ = "AWS::WorkSpaces::Workspace"

workspace :: { "BundleId" :: String, "DirectoryId" :: String, "UserName" :: String } -> Workspace
workspace required = Workspace
  (merge required
    { "RootVolumeEncryptionEnabled" : Nothing
    , "Tags" : Nothing
    , "UserVolumeEncryptionEnabled" : Nothing
    , "VolumeEncryptionKey" : Nothing
    , "WorkspaceProperties" : Nothing
    })

-- | `AWS::WorkSpaces::Workspace.WorkspaceProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html
-- |
-- | - `ComputeTypeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-computetypename
-- | - `RootVolumeSizeGib`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-rootvolumesizegib
-- | - `RunningMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmode
-- | - `RunningModeAutoStopTimeoutInMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmodeautostoptimeoutinminutes
-- | - `UserVolumeSizeGib`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-uservolumesizegib
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