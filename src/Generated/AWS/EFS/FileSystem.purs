module CloudFormation.AWS.EFS.FileSystem where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EFS::FileSystem`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html
-- |
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
newtype FileSystem = FileSystem
  { "Encrypted" :: Maybe Boolean
  , "FileSystemTags" :: Maybe (Array ElasticFileSystemTag)
  , "KmsKeyId" :: Maybe String
  , "LifecyclePolicies" :: Maybe (Array LifecyclePolicy)
  , "PerformanceMode" :: Maybe String
  , "ProvisionedThroughputInMibps" :: Maybe Number
  , "ThroughputMode" :: Maybe String
  }

derive instance newtypeFileSystem :: Newtype FileSystem _
instance resourceFileSystem :: Resource FileSystem where type_ _ = "AWS::EFS::FileSystem"

fileSystem :: FileSystem
fileSystem = FileSystem
  { "Encrypted" : Nothing
  , "FileSystemTags" : Nothing
  , "KmsKeyId" : Nothing
  , "LifecyclePolicies" : Nothing
  , "PerformanceMode" : Nothing
  , "ProvisionedThroughputInMibps" : Nothing
  , "ThroughputMode" : Nothing
  }

-- | `AWS::EFS::FileSystem.LifecyclePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html
-- |
-- | - `TransitionToIA`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticfilesystem-filesystem-lifecyclepolicy.html#cfn-elasticfilesystem-filesystem-lifecyclepolicy-transitiontoia
type LifecyclePolicy =
  { "TransitionToIA" :: String
  }

lifecyclePolicy :: { "TransitionToIA" :: String } -> LifecyclePolicy
lifecyclePolicy required =
  required

-- | `AWS::EFS::FileSystem.ElasticFileSystemTag`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html
-- |
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