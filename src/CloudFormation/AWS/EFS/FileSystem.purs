module CloudFormation.AWS.EFS.FileSystem where 

import Data.Maybe (Maybe(..))


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

type LifecyclePolicy =
  { "TransitionToIA" :: String
  }

lifecyclePolicy :: { "TransitionToIA" :: String } -> LifecyclePolicy
lifecyclePolicy required =
  required

type ElasticFileSystemTag =
  { "Key" :: String
  , "Value" :: String
  }

elasticFileSystemTag :: { "Key" :: String, "Value" :: String } -> ElasticFileSystemTag
elasticFileSystemTag required =
  required