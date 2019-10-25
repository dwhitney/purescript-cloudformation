module CloudFormation.AWS.WorkSpaces.Workspace where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "BundleId" :: Value String
  , "DirectoryId" :: Value String
  , "UserName" :: Value String
  , "RootVolumeEncryptionEnabled" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  , "UserVolumeEncryptionEnabled" :: Maybe (Value Boolean)
  , "VolumeEncryptionKey" :: Maybe (Value String)
  , "WorkspaceProperties" :: Maybe (Value WorkspaceProperties)
  }

derive instance newtypeWorkspace :: Newtype Workspace _
derive newtype instance writeWorkspace :: WriteForeign Workspace
instance resourceWorkspace :: Resource Workspace where type_ _ = "AWS::WorkSpaces::Workspace"

workspace :: { "BundleId" :: Value String, "DirectoryId" :: Value String, "UserName" :: Value String } -> Workspace
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
  { "ComputeTypeName" :: Maybe (Value String)
  , "RootVolumeSizeGib" :: Maybe (Value Int)
  , "RunningMode" :: Maybe (Value String)
  , "RunningModeAutoStopTimeoutInMinutes" :: Maybe (Value Int)
  , "UserVolumeSizeGib" :: Maybe (Value Int)
  }

workspaceProperties :: WorkspaceProperties
workspaceProperties =
  { "ComputeTypeName" : Nothing
  , "RootVolumeSizeGib" : Nothing
  , "RunningMode" : Nothing
  , "RunningModeAutoStopTimeoutInMinutes" : Nothing
  , "UserVolumeSizeGib" : Nothing
  }