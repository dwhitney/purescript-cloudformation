module AWS.S3.Bucket where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Bucket =
  { "AccelerateConfiguration" :: Maybe AccelerateConfiguration
  , "AccessControl" :: Maybe String
  , "AnalyticsConfigurations" :: Maybe (Array AnalyticsConfiguration)
  , "BucketEncryption" :: Maybe BucketEncryption
  , "BucketName" :: Maybe String
  , "CorsConfiguration" :: Maybe CorsConfiguration
  , "InventoryConfigurations" :: Maybe (Array InventoryConfiguration)
  , "LifecycleConfiguration" :: Maybe LifecycleConfiguration
  , "LoggingConfiguration" :: Maybe LoggingConfiguration
  , "MetricsConfigurations" :: Maybe (Array MetricsConfiguration)
  , "NotificationConfiguration" :: Maybe NotificationConfiguration
  , "ObjectLockConfiguration" :: Maybe ObjectLockConfiguration
  , "ObjectLockEnabled" :: Maybe Boolean
  , "PublicAccessBlockConfiguration" :: Maybe PublicAccessBlockConfiguration
  , "ReplicationConfiguration" :: Maybe ReplicationConfiguration
  , "Tags" :: Maybe (Array Tag)
  , "VersioningConfiguration" :: Maybe VersioningConfiguration
  , "WebsiteConfiguration" :: Maybe WebsiteConfiguration
  }

bucket :: Bucket
bucket =
  { "AccelerateConfiguration" : Nothing
  , "AccessControl" : Nothing
  , "AnalyticsConfigurations" : Nothing
  , "BucketEncryption" : Nothing
  , "BucketName" : Nothing
  , "CorsConfiguration" : Nothing
  , "InventoryConfigurations" : Nothing
  , "LifecycleConfiguration" : Nothing
  , "LoggingConfiguration" : Nothing
  , "MetricsConfigurations" : Nothing
  , "NotificationConfiguration" : Nothing
  , "ObjectLockConfiguration" : Nothing
  , "ObjectLockEnabled" : Nothing
  , "PublicAccessBlockConfiguration" : Nothing
  , "ReplicationConfiguration" : Nothing
  , "Tags" : Nothing
  , "VersioningConfiguration" : Nothing
  , "WebsiteConfiguration" : Nothing
  }

type FilterRule =
  { "Name" :: String
  , "Value" :: String
  }

filterRule :: { "Name" :: String, "Value" :: String } -> FilterRule
filterRule required =
  required

type DataExport =
  { "Destination" :: Destination
  , "OutputSchemaVersion" :: String
  }

dataExport :: { "Destination" :: Destination, "OutputSchemaVersion" :: String } -> DataExport
dataExport required =
  required

type Transition =
  { "StorageClass" :: String
  , "TransitionDate" :: Maybe String
  , "TransitionInDays" :: Maybe Int
  }

transition :: { "StorageClass" :: String } -> Transition
transition required =
  merge required
    { "TransitionDate" : Nothing
    , "TransitionInDays" : Nothing
    }

type TagFilter =
  { "Key" :: String
  , "Value" :: String
  }

tagFilter :: { "Key" :: String, "Value" :: String } -> TagFilter
tagFilter required =
  required

type MetricsConfiguration =
  { "Id" :: String
  , "Prefix" :: Maybe String
  , "TagFilters" :: Maybe (Array TagFilter)
  }

metricsConfiguration :: { "Id" :: String } -> MetricsConfiguration
metricsConfiguration required =
  merge required
    { "Prefix" : Nothing
    , "TagFilters" : Nothing
    }

type TopicConfiguration =
  { "Event" :: String
  , "Topic" :: String
  , "Filter" :: Maybe NotificationFilter
  }

topicConfiguration :: { "Event" :: String, "Topic" :: String } -> TopicConfiguration
topicConfiguration required =
  merge required
    { "Filter" : Nothing
    }

type Rule =
  { "Status" :: String
  , "AbortIncompleteMultipartUpload" :: Maybe AbortIncompleteMultipartUpload
  , "ExpirationDate" :: Maybe String
  , "ExpirationInDays" :: Maybe Int
  , "Id" :: Maybe String
  , "NoncurrentVersionExpirationInDays" :: Maybe Int
  , "NoncurrentVersionTransition" :: Maybe NoncurrentVersionTransition
  , "NoncurrentVersionTransitions" :: Maybe (Array NoncurrentVersionTransition)
  , "Prefix" :: Maybe String
  , "TagFilters" :: Maybe (Array TagFilter)
  , "Transition" :: Maybe Transition
  , "Transitions" :: Maybe (Array Transition)
  }

rule :: { "Status" :: String } -> Rule
rule required =
  merge required
    { "AbortIncompleteMultipartUpload" : Nothing
    , "ExpirationDate" : Nothing
    , "ExpirationInDays" : Nothing
    , "Id" : Nothing
    , "NoncurrentVersionExpirationInDays" : Nothing
    , "NoncurrentVersionTransition" : Nothing
    , "NoncurrentVersionTransitions" : Nothing
    , "Prefix" : Nothing
    , "TagFilters" : Nothing
    , "Transition" : Nothing
    , "Transitions" : Nothing
    }

type WebsiteConfiguration =
  { "ErrorDocument" :: Maybe String
  , "IndexDocument" :: Maybe String
  , "RedirectAllRequestsTo" :: Maybe RedirectAllRequestsTo
  , "RoutingRules" :: Maybe (Array RoutingRule)
  }

websiteConfiguration :: WebsiteConfiguration
websiteConfiguration =
  { "ErrorDocument" : Nothing
  , "IndexDocument" : Nothing
  , "RedirectAllRequestsTo" : Nothing
  , "RoutingRules" : Nothing
  }

type ObjectLockRule =
  { "DefaultRetention" :: Maybe DefaultRetention
  }

objectLockRule :: ObjectLockRule
objectLockRule =
  { "DefaultRetention" : Nothing
  }

type RedirectRule =
  { "HostName" :: Maybe String
  , "HttpRedirectCode" :: Maybe String
  , "Protocol" :: Maybe String
  , "ReplaceKeyPrefixWith" :: Maybe String
  , "ReplaceKeyWith" :: Maybe String
  }

redirectRule :: RedirectRule
redirectRule =
  { "HostName" : Nothing
  , "HttpRedirectCode" : Nothing
  , "Protocol" : Nothing
  , "ReplaceKeyPrefixWith" : Nothing
  , "ReplaceKeyWith" : Nothing
  }

type EncryptionConfiguration =
  { "ReplicaKmsKeyID" :: String
  }

encryptionConfiguration :: { "ReplicaKmsKeyID" :: String } -> EncryptionConfiguration
encryptionConfiguration required =
  required

type RoutingRule =
  { "RedirectRule" :: RedirectRule
  , "RoutingRuleCondition" :: Maybe RoutingRuleCondition
  }

routingRule :: { "RedirectRule" :: RedirectRule } -> RoutingRule
routingRule required =
  merge required
    { "RoutingRuleCondition" : Nothing
    }

type StorageClassAnalysis =
  { "DataExport" :: Maybe DataExport
  }

storageClassAnalysis :: StorageClassAnalysis
storageClassAnalysis =
  { "DataExport" : Nothing
  }

type LoggingConfiguration =
  { "DestinationBucketName" :: Maybe String
  , "LogFilePrefix" :: Maybe String
  }

loggingConfiguration :: LoggingConfiguration
loggingConfiguration =
  { "DestinationBucketName" : Nothing
  , "LogFilePrefix" : Nothing
  }

type SourceSelectionCriteria =
  { "SseKmsEncryptedObjects" :: SseKmsEncryptedObjects
  }

sourceSelectionCriteria :: { "SseKmsEncryptedObjects" :: SseKmsEncryptedObjects } -> SourceSelectionCriteria
sourceSelectionCriteria required =
  required

type AnalyticsConfiguration =
  { "Id" :: String
  , "StorageClassAnalysis" :: StorageClassAnalysis
  , "Prefix" :: Maybe String
  , "TagFilters" :: Maybe (Array TagFilter)
  }

analyticsConfiguration :: { "Id" :: String, "StorageClassAnalysis" :: StorageClassAnalysis } -> AnalyticsConfiguration
analyticsConfiguration required =
  merge required
    { "Prefix" : Nothing
    , "TagFilters" : Nothing
    }

type ServerSideEncryptionRule =
  { "ServerSideEncryptionByDefault" :: Maybe ServerSideEncryptionByDefault
  }

serverSideEncryptionRule :: ServerSideEncryptionRule
serverSideEncryptionRule =
  { "ServerSideEncryptionByDefault" : Nothing
  }

type ReplicationRule =
  { "Destination" :: ReplicationDestination
  , "Prefix" :: String
  , "Status" :: String
  , "Id" :: Maybe String
  , "SourceSelectionCriteria" :: Maybe SourceSelectionCriteria
  }

replicationRule :: { "Destination" :: ReplicationDestination, "Prefix" :: String, "Status" :: String } -> ReplicationRule
replicationRule required =
  merge required
    { "Id" : Nothing
    , "SourceSelectionCriteria" : Nothing
    }

type LambdaConfiguration =
  { "Event" :: String
  , "Function" :: String
  , "Filter" :: Maybe NotificationFilter
  }

lambdaConfiguration :: { "Event" :: String, "Function" :: String } -> LambdaConfiguration
lambdaConfiguration required =
  merge required
    { "Filter" : Nothing
    }

type NotificationFilter =
  { "S3Key" :: S3KeyFilter
  }

notificationFilter :: { "S3Key" :: S3KeyFilter } -> NotificationFilter
notificationFilter required =
  required

type DefaultRetention =
  { "Days" :: Maybe Int
  , "Mode" :: Maybe String
  , "Years" :: Maybe Int
  }

defaultRetention :: DefaultRetention
defaultRetention =
  { "Days" : Nothing
  , "Mode" : Nothing
  , "Years" : Nothing
  }

type PublicAccessBlockConfiguration =
  { "BlockPublicAcls" :: Maybe Boolean
  , "BlockPublicPolicy" :: Maybe Boolean
  , "IgnorePublicAcls" :: Maybe Boolean
  , "RestrictPublicBuckets" :: Maybe Boolean
  }

publicAccessBlockConfiguration :: PublicAccessBlockConfiguration
publicAccessBlockConfiguration =
  { "BlockPublicAcls" : Nothing
  , "BlockPublicPolicy" : Nothing
  , "IgnorePublicAcls" : Nothing
  , "RestrictPublicBuckets" : Nothing
  }

type AbortIncompleteMultipartUpload =
  { "DaysAfterInitiation" :: Int
  }

abortIncompleteMultipartUpload :: { "DaysAfterInitiation" :: Int } -> AbortIncompleteMultipartUpload
abortIncompleteMultipartUpload required =
  required

type NoncurrentVersionTransition =
  { "StorageClass" :: String
  , "TransitionInDays" :: Int
  }

noncurrentVersionTransition :: { "StorageClass" :: String, "TransitionInDays" :: Int } -> NoncurrentVersionTransition
noncurrentVersionTransition required =
  required

type AccelerateConfiguration =
  { "AccelerationStatus" :: String
  }

accelerateConfiguration :: { "AccelerationStatus" :: String } -> AccelerateConfiguration
accelerateConfiguration required =
  required

type ReplicationDestination =
  { "Bucket" :: String
  , "AccessControlTranslation" :: Maybe AccessControlTranslation
  , "Account" :: Maybe String
  , "EncryptionConfiguration" :: Maybe EncryptionConfiguration
  , "StorageClass" :: Maybe String
  }

replicationDestination :: { "Bucket" :: String } -> ReplicationDestination
replicationDestination required =
  merge required
    { "AccessControlTranslation" : Nothing
    , "Account" : Nothing
    , "EncryptionConfiguration" : Nothing
    , "StorageClass" : Nothing
    }

type CorsConfiguration =
  { "CorsRules" :: Array CorsRule
  }

corsConfiguration :: { "CorsRules" :: Array CorsRule } -> CorsConfiguration
corsConfiguration required =
  required

type ObjectLockConfiguration =
  { "ObjectLockEnabled" :: Maybe String
  , "Rule" :: Maybe ObjectLockRule
  }

objectLockConfiguration :: ObjectLockConfiguration
objectLockConfiguration =
  { "ObjectLockEnabled" : Nothing
  , "Rule" : Nothing
  }

type QueueConfiguration =
  { "Event" :: String
  , "Queue" :: String
  , "Filter" :: Maybe NotificationFilter
  }

queueConfiguration :: { "Event" :: String, "Queue" :: String } -> QueueConfiguration
queueConfiguration required =
  merge required
    { "Filter" : Nothing
    }

type SseKmsEncryptedObjects =
  { "Status" :: String
  }

sseKmsEncryptedObjects :: { "Status" :: String } -> SseKmsEncryptedObjects
sseKmsEncryptedObjects required =
  required

type ReplicationConfiguration =
  { "Role" :: String
  , "Rules" :: Array ReplicationRule
  }

replicationConfiguration :: { "Role" :: String, "Rules" :: Array ReplicationRule } -> ReplicationConfiguration
replicationConfiguration required =
  required

type InventoryConfiguration =
  { "Destination" :: Destination
  , "Enabled" :: Boolean
  , "Id" :: String
  , "IncludedObjectVersions" :: String
  , "ScheduleFrequency" :: String
  , "OptionalFields" :: Maybe (Array String)
  , "Prefix" :: Maybe String
  }

inventoryConfiguration :: { "Destination" :: Destination, "Enabled" :: Boolean, "Id" :: String, "IncludedObjectVersions" :: String, "ScheduleFrequency" :: String } -> InventoryConfiguration
inventoryConfiguration required =
  merge required
    { "OptionalFields" : Nothing
    , "Prefix" : Nothing
    }

type S3KeyFilter =
  { "Rules" :: Array FilterRule
  }

s3KeyFilter :: { "Rules" :: Array FilterRule } -> S3KeyFilter
s3KeyFilter required =
  required

type RedirectAllRequestsTo =
  { "HostName" :: String
  , "Protocol" :: Maybe String
  }

redirectAllRequestsTo :: { "HostName" :: String } -> RedirectAllRequestsTo
redirectAllRequestsTo required =
  merge required
    { "Protocol" : Nothing
    }

type ServerSideEncryptionByDefault =
  { "SSEAlgorithm" :: String
  , "KMSMasterKeyID" :: Maybe String
  }

serverSideEncryptionByDefault :: { "SSEAlgorithm" :: String } -> ServerSideEncryptionByDefault
serverSideEncryptionByDefault required =
  merge required
    { "KMSMasterKeyID" : Nothing
    }

type NotificationConfiguration =
  { "LambdaConfigurations" :: Maybe (Array LambdaConfiguration)
  , "QueueConfigurations" :: Maybe (Array QueueConfiguration)
  , "TopicConfigurations" :: Maybe (Array TopicConfiguration)
  }

notificationConfiguration :: NotificationConfiguration
notificationConfiguration =
  { "LambdaConfigurations" : Nothing
  , "QueueConfigurations" : Nothing
  , "TopicConfigurations" : Nothing
  }

type VersioningConfiguration =
  { "Status" :: String
  }

versioningConfiguration :: { "Status" :: String } -> VersioningConfiguration
versioningConfiguration required =
  required

type AccessControlTranslation =
  { "Owner" :: String
  }

accessControlTranslation :: { "Owner" :: String } -> AccessControlTranslation
accessControlTranslation required =
  required

type Destination =
  { "BucketArn" :: String
  , "Format" :: String
  , "BucketAccountId" :: Maybe String
  , "Prefix" :: Maybe String
  }

destination :: { "BucketArn" :: String, "Format" :: String } -> Destination
destination required =
  merge required
    { "BucketAccountId" : Nothing
    , "Prefix" : Nothing
    }

type CorsRule =
  { "AllowedMethods" :: Array String
  , "AllowedOrigins" :: Array String
  , "AllowedHeaders" :: Maybe (Array String)
  , "ExposedHeaders" :: Maybe (Array String)
  , "Id" :: Maybe String
  , "MaxAge" :: Maybe Int
  }

corsRule :: { "AllowedMethods" :: Array String, "AllowedOrigins" :: Array String } -> CorsRule
corsRule required =
  merge required
    { "AllowedHeaders" : Nothing
    , "ExposedHeaders" : Nothing
    , "Id" : Nothing
    , "MaxAge" : Nothing
    }

type LifecycleConfiguration =
  { "Rules" :: Array Rule
  }

lifecycleConfiguration :: { "Rules" :: Array Rule } -> LifecycleConfiguration
lifecycleConfiguration required =
  required

type RoutingRuleCondition =
  { "HttpErrorCodeReturnedEquals" :: Maybe String
  , "KeyPrefixEquals" :: Maybe String
  }

routingRuleCondition :: RoutingRuleCondition
routingRuleCondition =
  { "HttpErrorCodeReturnedEquals" : Nothing
  , "KeyPrefixEquals" : Nothing
  }

type BucketEncryption =
  { "ServerSideEncryptionConfiguration" :: Array ServerSideEncryptionRule
  }

bucketEncryption :: { "ServerSideEncryptionConfiguration" :: Array ServerSideEncryptionRule } -> BucketEncryption
bucketEncryption required =
  required