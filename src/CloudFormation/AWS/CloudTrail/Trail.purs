module CloudFormation.AWS.CloudTrail.Trail where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Trail =
  { "IsLogging" :: Boolean
  , "S3BucketName" :: String
  , "CloudWatchLogsLogGroupArn" :: Maybe String
  , "CloudWatchLogsRoleArn" :: Maybe String
  , "EnableLogFileValidation" :: Maybe Boolean
  , "EventSelectors" :: Maybe (Array EventSelector)
  , "IncludeGlobalServiceEvents" :: Maybe Boolean
  , "IsMultiRegionTrail" :: Maybe Boolean
  , "KMSKeyId" :: Maybe String
  , "S3KeyPrefix" :: Maybe String
  , "SnsTopicName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TrailName" :: Maybe String
  }

trail :: { "IsLogging" :: Boolean, "S3BucketName" :: String } -> Trail
trail required =
  merge required
    { "CloudWatchLogsLogGroupArn" : Nothing
    , "CloudWatchLogsRoleArn" : Nothing
    , "EnableLogFileValidation" : Nothing
    , "EventSelectors" : Nothing
    , "IncludeGlobalServiceEvents" : Nothing
    , "IsMultiRegionTrail" : Nothing
    , "KMSKeyId" : Nothing
    , "S3KeyPrefix" : Nothing
    , "SnsTopicName" : Nothing
    , "Tags" : Nothing
    , "TrailName" : Nothing
    }

type DataResource =
  { "Type" :: String
  , "Values" :: Maybe (Array String)
  }

dataResource :: { "Type" :: String } -> DataResource
dataResource required =
  merge required
    { "Values" : Nothing
    }

type EventSelector =
  { "DataResources" :: Maybe (Array DataResource)
  , "IncludeManagementEvents" :: Maybe Boolean
  , "ReadWriteType" :: Maybe String
  }

eventSelector :: EventSelector
eventSelector =
  { "DataResources" : Nothing
  , "IncludeManagementEvents" : Nothing
  , "ReadWriteType" : Nothing
  }