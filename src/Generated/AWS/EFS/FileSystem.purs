module CloudFormation.AWS.EFS.FileSystem where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Encrypted" :: Maybe (Value Boolean)
  , "FileSystemTags" :: Maybe (Value (Array ElasticFileSystemTag))
  , "KmsKeyId" :: Maybe (Value String)
  , "LifecyclePolicies" :: Maybe (Value (Array LifecyclePolicy))
  , "PerformanceMode" :: Maybe (Value String)
  , "ProvisionedThroughputInMibps" :: Maybe (Value Number)
  , "ThroughputMode" :: Maybe (Value String)
  }

derive instance newtypeFileSystem :: Newtype FileSystem _
derive newtype instance writeFileSystem :: WriteForeign FileSystem
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
  { "TransitionToIA" :: Value String
  }

lifecyclePolicy :: { "TransitionToIA" :: Value String } -> LifecyclePolicy
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
  { "Key" :: Value String
  , "Value" :: Value String
  }

elasticFileSystemTag :: { "Key" :: Value String, "Value" :: Value String } -> ElasticFileSystemTag
elasticFileSystemTag required =
  required