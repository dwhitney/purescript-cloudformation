module CloudFormation.AWS.Config.ConfigurationRecorder where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Config::ConfigurationRecorder`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-name
-- | - `RecordingGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-recordinggroup
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-rolearn
type ConfigurationRecorder =
  { "RoleARN" :: String
  , "Name" :: Maybe String
  , "RecordingGroup" :: Maybe RecordingGroup
  }

configurationRecorder :: { "RoleARN" :: String } -> ConfigurationRecorder
configurationRecorder required =
  merge required
    { "Name" : Nothing
    , "RecordingGroup" : Nothing
    }

-- | `AWS::Config::ConfigurationRecorder.RecordingGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html
-- |
-- | - `AllSupported`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported
-- | - `IncludeGlobalResourceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes
-- | - `ResourceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes
type RecordingGroup =
  { "AllSupported" :: Maybe Boolean
  , "IncludeGlobalResourceTypes" :: Maybe Boolean
  , "ResourceTypes" :: Maybe (Array String)
  }

recordingGroup :: RecordingGroup
recordingGroup =
  { "AllSupported" : Nothing
  , "IncludeGlobalResourceTypes" : Nothing
  , "ResourceTypes" : Nothing
  }