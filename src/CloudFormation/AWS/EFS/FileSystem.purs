module CloudFormation.AWS.EFS.FileSystem where 

import Data.Maybe (Maybe(..))


-- | `AWS::EFS::FileSystem`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html-- |
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-encrypted
-- | - `FileSystemTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-filesystemtags
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-kmskeyid
-- | - `LifecyclePolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-elasticfilesystem-filesystem-lifecyclepolicies
-- | - `PerformanceMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-efs-filesystem-performancemode
-- | - `ProvisionedThroughputInMibps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-elasticfilesystem-filesystem-provisionedthroughputinmibps
-- | - `ThroughputMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html#cfn-elasticfilesystem-filesystem-throughputmode
type FileSystem =
  { "Encrypted" :: Maybe Boolean
  , "FileSystemTags" :: Maybe (Array ElasticFileSystemTag)
  , "KmsKeyId" :: Maybe String
  , "LifecyclePolicies" :: Maybe (Array LifecyclePolicy)
  , "PerformanceMode" :: Maybe String
  , "ProvisionedThroughputInMibps" :: Maybe Number
  , "ThroughputMode" :: Maybe String
  }

fileSystem :: FileSystem
fileSystem =
  { "Encrypted" : Nothing
  , "FileSystemTags" : Nothing
  , "KmsKeyId" : Nothing
  , "LifecyclePolicies" : Nothing
  , "PerformanceMode" : Nothing
  , "ProvisionedThroughputInMibps" : Nothing
  , "ThroughputMode" : Nothing
  }

-- | `AWS::EFS::FileSystem.LifecyclePolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html-- |
-- | - `TransitionToIA`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html#cfn-elasticfilesystem-filesystem-lifecyclepolicy-transitiontoia
type LifecyclePolicy =
  { "TransitionToIA" :: String
  }

lifecyclePolicy :: { "TransitionToIA" :: String } -> LifecyclePolicy
lifecyclePolicy required =
  required

-- | `AWS::EFS::FileSystem.ElasticFileSystemTag`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-value
type ElasticFileSystemTag =
  { "Key" :: String
  , "Value" :: String
  }

elasticFileSystemTag :: { "Key" :: String, "Value" :: String } -> ElasticFileSystemTag
elasticFileSystemTag required =
  required