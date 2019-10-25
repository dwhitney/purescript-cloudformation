module CloudFormation.AWS.Config.ConfigurationRecorder where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::ConfigurationRecorder`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-name
-- | - `RecordingGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-recordinggroup
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-rolearn
newtype ConfigurationRecorder = ConfigurationRecorder
  { "RoleARN" :: Value String
  , "Name" :: Maybe (Value String)
  , "RecordingGroup" :: Maybe (Value RecordingGroup)
  }

derive instance newtypeConfigurationRecorder :: Newtype ConfigurationRecorder _
derive newtype instance writeConfigurationRecorder :: WriteForeign ConfigurationRecorder
instance resourceConfigurationRecorder :: Resource ConfigurationRecorder where type_ _ = "AWS::Config::ConfigurationRecorder"

configurationRecorder :: { "RoleARN" :: Value String } -> ConfigurationRecorder
configurationRecorder required = ConfigurationRecorder
  (merge required
    { "Name" : Nothing
    , "RecordingGroup" : Nothing
    })

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
  { "AllSupported" :: Maybe (Value Boolean)
  , "IncludeGlobalResourceTypes" :: Maybe (Value Boolean)
  , "ResourceTypes" :: Maybe (Value (Array String))
  }

recordingGroup :: RecordingGroup
recordingGroup =
  { "AllSupported" : Nothing
  , "IncludeGlobalResourceTypes" : Nothing
  , "ResourceTypes" : Nothing
  }