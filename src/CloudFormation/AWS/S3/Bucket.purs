module CloudFormation.AWS.S3.Bucket where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::S3::Bucket`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html-- |
-- | - `AccelerateConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accelerateconfiguration
-- | - `AccessControl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accesscontrol
-- | - `AnalyticsConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-analyticsconfigurations
-- | - `BucketEncryption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-bucketencryption
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-name
-- | - `CorsConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-crossoriginconfig
-- | - `InventoryConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-inventoryconfigurations
-- | - `LifecycleConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-lifecycleconfig
-- | - `LoggingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-loggingconfig
-- | - `MetricsConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-metricsconfigurations
-- | - `NotificationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-notification
-- | - `ObjectLockConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-objectlockconfiguration
-- | - `ObjectLockEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-objectlockenabled
-- | - `PublicAccessBlockConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-publicaccessblockconfiguration
-- | - `ReplicationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-replicationconfiguration
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-tags
-- | - `VersioningConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-versioning
-- | - `WebsiteConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-websiteconfiguration
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

-- | `AWS::S3::Bucket.FilterRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules-value
type FilterRule =
  { "Name" :: String
  , "Value" :: String
  }

filterRule :: { "Name" :: String, "Value" :: String } -> FilterRule
filterRule required =
  required

-- | `AWS::S3::Bucket.DataExport`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-destination
-- | - `OutputSchemaVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-outputschemaversion
type DataExport =
  { "Destination" :: Destination
  , "OutputSchemaVersion" :: String
  }

dataExport :: { "Destination" :: Destination, "OutputSchemaVersion" :: String } -> DataExport
dataExport required =
  required

-- | `AWS::S3::Bucket.Transition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html-- |
-- | - `StorageClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-storageclass
-- | - `TransitionDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitiondate
-- | - `TransitionInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitionindays
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

-- | `AWS::S3::Bucket.TagFilter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-value
type TagFilter =
  { "Key" :: String
  , "Value" :: String
  }

tagFilter :: { "Key" :: String, "Value" :: String } -> TagFilter
tagFilter required =
  required

-- | `AWS::S3::Bucket.MetricsConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-id
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-prefix
-- | - `TagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-tagfilters
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

-- | `AWS::S3::Bucket.TopicConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html-- |
-- | - `Event`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-event
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-filter
-- | - `Topic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html#cfn-s3-bucket-notificationconfig-topicconfig-topic
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

-- | `AWS::S3::Bucket.Rule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html-- |
-- | - `AbortIncompleteMultipartUpload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-abortincompletemultipartupload
-- | - `ExpirationDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate
-- | - `ExpirationInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id
-- | - `NoncurrentVersionExpirationInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays
-- | - `NoncurrentVersionTransition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition
-- | - `NoncurrentVersionTransitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status
-- | - `TagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-tagfilters
-- | - `Transition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition
-- | - `Transitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions
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

-- | `AWS::S3::Bucket.WebsiteConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html-- |
-- | - `ErrorDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-errordocument
-- | - `IndexDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-indexdocument
-- | - `RedirectAllRequestsTo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-redirectallrequeststo
-- | - `RoutingRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html#cfn-s3-websiteconfiguration-routingrules
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

-- | `AWS::S3::Bucket.ObjectLockRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html-- |
-- | - `DefaultRetention`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html#cfn-s3-bucket-objectlockrule-defaultretention
type ObjectLockRule =
  { "DefaultRetention" :: Maybe DefaultRetention
  }

objectLockRule :: ObjectLockRule
objectLockRule =
  { "DefaultRetention" : Nothing
  }

-- | `AWS::S3::Bucket.RedirectRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html-- |
-- | - `HostName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-hostname
-- | - `HttpRedirectCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-httpredirectcode
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-protocol
-- | - `ReplaceKeyPrefixWith`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeyprefixwith
-- | - `ReplaceKeyWith`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html#cfn-s3-websiteconfiguration-redirectrule-replacekeywith
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

-- | `AWS::S3::Bucket.EncryptionConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html-- |
-- | - `ReplicaKmsKeyID`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html#cfn-s3-bucket-encryptionconfiguration-replicakmskeyid
type EncryptionConfiguration =
  { "ReplicaKmsKeyID" :: String
  }

encryptionConfiguration :: { "ReplicaKmsKeyID" :: String } -> EncryptionConfiguration
encryptionConfiguration required =
  required

-- | `AWS::S3::Bucket.RoutingRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html-- |
-- | - `RedirectRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-redirectrule
-- | - `RoutingRuleCondition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition
type RoutingRule =
  { "RedirectRule" :: RedirectRule
  , "RoutingRuleCondition" :: Maybe RoutingRuleCondition
  }

routingRule :: { "RedirectRule" :: RedirectRule } -> RoutingRule
routingRule required =
  merge required
    { "RoutingRuleCondition" : Nothing
    }

-- | `AWS::S3::Bucket.StorageClassAnalysis`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-storageclassanalysis.html-- |
-- | - `DataExport`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-storageclassanalysis.html#cfn-s3-bucket-storageclassanalysis-dataexport
type StorageClassAnalysis =
  { "DataExport" :: Maybe DataExport
  }

storageClassAnalysis :: StorageClassAnalysis
storageClassAnalysis =
  { "DataExport" : Nothing
  }

-- | `AWS::S3::Bucket.LoggingConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html-- |
-- | - `DestinationBucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-destinationbucketname
-- | - `LogFilePrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-logfileprefix
type LoggingConfiguration =
  { "DestinationBucketName" :: Maybe String
  , "LogFilePrefix" :: Maybe String
  }

loggingConfiguration :: LoggingConfiguration
loggingConfiguration =
  { "DestinationBucketName" : Nothing
  , "LogFilePrefix" : Nothing
  }

-- | `AWS::S3::Bucket.SourceSelectionCriteria`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html-- |
-- | - `SseKmsEncryptedObjects`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-ssekmsencryptedobjects
type SourceSelectionCriteria =
  { "SseKmsEncryptedObjects" :: SseKmsEncryptedObjects
  }

sourceSelectionCriteria :: { "SseKmsEncryptedObjects" :: SseKmsEncryptedObjects } -> SourceSelectionCriteria
sourceSelectionCriteria required =
  required

-- | `AWS::S3::Bucket.AnalyticsConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-id
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-prefix
-- | - `StorageClassAnalysis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-storageclassanalysis
-- | - `TagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-tagfilters
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

-- | `AWS::S3::Bucket.ServerSideEncryptionRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html-- |
-- | - `ServerSideEncryptionByDefault`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionrule.html#cfn-s3-bucket-serversideencryptionrule-serversideencryptionbydefault
type ServerSideEncryptionRule =
  { "ServerSideEncryptionByDefault" :: Maybe ServerSideEncryptionByDefault
  }

serverSideEncryptionRule :: ServerSideEncryptionRule
serverSideEncryptionRule =
  { "ServerSideEncryptionByDefault" : Nothing
  }

-- | `AWS::S3::Bucket.ReplicationRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-destination
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-id
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-prefix
-- | - `SourceSelectionCriteria`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-sourceselectioncriteria
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-status
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

-- | `AWS::S3::Bucket.LambdaConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html-- |
-- | - `Event`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-event
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-filter
-- | - `Function`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-lambdaconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig-function
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

-- | `AWS::S3::Bucket.NotificationFilter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html-- |
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key
type NotificationFilter =
  { "S3Key" :: S3KeyFilter
  }

notificationFilter :: { "S3Key" :: S3KeyFilter } -> NotificationFilter
notificationFilter required =
  required

-- | `AWS::S3::Bucket.DefaultRetention`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html-- |
-- | - `Days`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-days
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-mode
-- | - `Years`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-years
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

-- | `AWS::S3::Bucket.PublicAccessBlockConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html-- |
-- | - `BlockPublicAcls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicacls
-- | - `BlockPublicPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicpolicy
-- | - `IgnorePublicAcls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-ignorepublicacls
-- | - `RestrictPublicBuckets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-restrictpublicbuckets
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

-- | `AWS::S3::Bucket.AbortIncompleteMultipartUpload`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html-- |
-- | - `DaysAfterInitiation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html#cfn-s3-bucket-abortincompletemultipartupload-daysafterinitiation
type AbortIncompleteMultipartUpload =
  { "DaysAfterInitiation" :: Int
  }

abortIncompleteMultipartUpload :: { "DaysAfterInitiation" :: Int } -> AbortIncompleteMultipartUpload
abortIncompleteMultipartUpload required =
  required

-- | `AWS::S3::Bucket.NoncurrentVersionTransition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html-- |
-- | - `StorageClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-storageclass
-- | - `TransitionInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-transitionindays
type NoncurrentVersionTransition =
  { "StorageClass" :: String
  , "TransitionInDays" :: Int
  }

noncurrentVersionTransition :: { "StorageClass" :: String, "TransitionInDays" :: Int } -> NoncurrentVersionTransition
noncurrentVersionTransition required =
  required

-- | `AWS::S3::Bucket.AccelerateConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html-- |
-- | - `AccelerationStatus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html#cfn-s3-bucket-accelerateconfiguration-accelerationstatus
type AccelerateConfiguration =
  { "AccelerationStatus" :: String
  }

accelerateConfiguration :: { "AccelerationStatus" :: String } -> AccelerateConfiguration
accelerateConfiguration required =
  required

-- | `AWS::S3::Bucket.ReplicationDestination`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html-- |
-- | - `AccessControlTranslation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-accesscontroltranslation
-- | - `Account`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-account
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-bucket
-- | - `EncryptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-encryptionconfiguration
-- | - `StorageClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-storageclass
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

-- | `AWS::S3::Bucket.CorsConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html-- |
-- | - `CorsRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html#cfn-s3-bucket-cors-corsrule
type CorsConfiguration =
  { "CorsRules" :: Array CorsRule
  }

corsConfiguration :: { "CorsRules" :: Array CorsRule } -> CorsConfiguration
corsConfiguration required =
  required

-- | `AWS::S3::Bucket.ObjectLockConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html-- |
-- | - `ObjectLockEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-objectlockenabled
-- | - `Rule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockconfiguration.html#cfn-s3-bucket-objectlockconfiguration-rule
type ObjectLockConfiguration =
  { "ObjectLockEnabled" :: Maybe String
  , "Rule" :: Maybe ObjectLockRule
  }

objectLockConfiguration :: ObjectLockConfiguration
objectLockConfiguration =
  { "ObjectLockEnabled" : Nothing
  , "Rule" : Nothing
  }

-- | `AWS::S3::Bucket.QueueConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html-- |
-- | - `Event`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-event
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-filter
-- | - `Queue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-queueconfig.html#cfn-s3-bucket-notificationconfig-queueconfig-queue
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

-- | `AWS::S3::Bucket.SseKmsEncryptedObjects`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html#cfn-s3-bucket-ssekmsencryptedobjects-status
type SseKmsEncryptedObjects =
  { "Status" :: String
  }

sseKmsEncryptedObjects :: { "Status" :: String } -> SseKmsEncryptedObjects
sseKmsEncryptedObjects required =
  required

-- | `AWS::S3::Bucket.ReplicationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html-- |
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-role
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-rules
type ReplicationConfiguration =
  { "Role" :: String
  , "Rules" :: Array ReplicationRule
  }

replicationConfiguration :: { "Role" :: String, "Rules" :: Array ReplicationRule } -> ReplicationConfiguration
replicationConfiguration required =
  required

-- | `AWS::S3::Bucket.InventoryConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-destination
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-enabled
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-id
-- | - `IncludedObjectVersions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-includedobjectversions
-- | - `OptionalFields`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-optionalfields
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-prefix
-- | - `ScheduleFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-schedulefrequency
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

-- | `AWS::S3::Bucket.S3KeyFilter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules
type S3KeyFilter =
  { "Rules" :: Array FilterRule
  }

s3KeyFilter :: { "Rules" :: Array FilterRule } -> S3KeyFilter
s3KeyFilter required =
  required

-- | `AWS::S3::Bucket.RedirectAllRequestsTo`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html-- |
-- | - `HostName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html#cfn-s3-websiteconfiguration-redirectallrequeststo-hostname
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html#cfn-s3-websiteconfiguration-redirectallrequeststo-protocol
type RedirectAllRequestsTo =
  { "HostName" :: String
  , "Protocol" :: Maybe String
  }

redirectAllRequestsTo :: { "HostName" :: String } -> RedirectAllRequestsTo
redirectAllRequestsTo required =
  merge required
    { "Protocol" : Nothing
    }

-- | `AWS::S3::Bucket.ServerSideEncryptionByDefault`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html-- |
-- | - `KMSMasterKeyID`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-kmsmasterkeyid
-- | - `SSEAlgorithm`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-ssealgorithm
type ServerSideEncryptionByDefault =
  { "SSEAlgorithm" :: String
  , "KMSMasterKeyID" :: Maybe String
  }

serverSideEncryptionByDefault :: { "SSEAlgorithm" :: String } -> ServerSideEncryptionByDefault
serverSideEncryptionByDefault required =
  merge required
    { "KMSMasterKeyID" : Nothing
    }

-- | `AWS::S3::Bucket.NotificationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html-- |
-- | - `LambdaConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-lambdaconfig
-- | - `QueueConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-queueconfig
-- | - `TopicConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html#cfn-s3-bucket-notificationconfig-topicconfig
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

-- | `AWS::S3::Bucket.VersioningConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html#cfn-s3-bucket-versioningconfig-status
type VersioningConfiguration =
  { "Status" :: String
  }

versioningConfiguration :: { "Status" :: String } -> VersioningConfiguration
versioningConfiguration required =
  required

-- | `AWS::S3::Bucket.AccessControlTranslation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html-- |
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html#cfn-s3-bucket-accesscontroltranslation-owner
type AccessControlTranslation =
  { "Owner" :: String
  }

accessControlTranslation :: { "Owner" :: String } -> AccessControlTranslation
accessControlTranslation required =
  required

-- | `AWS::S3::Bucket.Destination`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html-- |
-- | - `BucketAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-bucketaccountid
-- | - `BucketArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-bucketarn
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-format
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-prefix
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

-- | `AWS::S3::Bucket.CorsRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html-- |
-- | - `AllowedHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedheaders
-- | - `AllowedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedmethods
-- | - `AllowedOrigins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedorigins
-- | - `ExposedHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-exposedheaders
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-id
-- | - `MaxAge`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-maxage
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

-- | `AWS::S3::Bucket.LifecycleConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html#cfn-s3-bucket-lifecycleconfig-rules
type LifecycleConfiguration =
  { "Rules" :: Array Rule
  }

lifecycleConfiguration :: { "Rules" :: Array Rule } -> LifecycleConfiguration
lifecycleConfiguration required =
  required

-- | `AWS::S3::Bucket.RoutingRuleCondition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html-- |
-- | - `HttpErrorCodeReturnedEquals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-httperrorcodereturnedequals
-- | - `KeyPrefixEquals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-keyprefixequals
type RoutingRuleCondition =
  { "HttpErrorCodeReturnedEquals" :: Maybe String
  , "KeyPrefixEquals" :: Maybe String
  }

routingRuleCondition :: RoutingRuleCondition
routingRuleCondition =
  { "HttpErrorCodeReturnedEquals" : Nothing
  , "KeyPrefixEquals" : Nothing
  }

-- | `AWS::S3::Bucket.BucketEncryption`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html-- |
-- | - `ServerSideEncryptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html#cfn-s3-bucket-bucketencryption-serversideencryptionconfiguration
type BucketEncryption =
  { "ServerSideEncryptionConfiguration" :: Array ServerSideEncryptionRule
  }

bucketEncryption :: { "ServerSideEncryptionConfiguration" :: Array ServerSideEncryptionRule } -> BucketEncryption
bucketEncryption required =
  required