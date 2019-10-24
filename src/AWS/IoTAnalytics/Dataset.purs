module AWS.IoTAnalytics.Dataset where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Dataset =
  { "Actions" :: Array Action
  , "DatasetName" :: Maybe String
  , "ContentDeliveryRules" :: Maybe (Array DatasetContentDeliveryRule)
  , "Triggers" :: Maybe (Array Trigger)
  , "VersioningConfiguration" :: Maybe VersioningConfiguration
  , "RetentionPeriod" :: Maybe RetentionPeriod
  , "Tags" :: Maybe (Array Tag)
  }

dataset :: { "Actions" :: Array Action } -> Dataset
dataset required =
  merge required
    { "DatasetName" : Nothing
    , "ContentDeliveryRules" : Nothing
    , "Triggers" : Nothing
    , "VersioningConfiguration" : Nothing
    , "RetentionPeriod" : Nothing
    , "Tags" : Nothing
    }

type S3DestinationConfiguration =
  { "Bucket" :: String
  , "Key" :: String
  , "RoleArn" :: String
  , "GlueConfiguration" :: Maybe GlueConfiguration
  }

s3DestinationConfiguration :: { "Bucket" :: String, "Key" :: String, "RoleArn" :: String } -> S3DestinationConfiguration
s3DestinationConfiguration required =
  merge required
    { "GlueConfiguration" : Nothing
    }

type RetentionPeriod =
  { "NumberOfDays" :: Int
  , "Unlimited" :: Boolean
  }

retentionPeriod :: { "NumberOfDays" :: Int, "Unlimited" :: Boolean } -> RetentionPeriod
retentionPeriod required =
  required

type Schedule =
  { "ScheduleExpression" :: String
  }

schedule :: { "ScheduleExpression" :: String } -> Schedule
schedule required =
  required

type TriggeringDataset =
  { "DatasetName" :: String
  }

triggeringDataset :: { "DatasetName" :: String } -> TriggeringDataset
triggeringDataset required =
  required

type ResourceConfiguration =
  { "VolumeSizeInGB" :: Int
  , "ComputeType" :: String
  }

resourceConfiguration :: { "VolumeSizeInGB" :: Int, "ComputeType" :: String } -> ResourceConfiguration
resourceConfiguration required =
  required

type VersioningConfiguration =
  { "MaxVersions" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

versioningConfiguration :: VersioningConfiguration
versioningConfiguration =
  { "MaxVersions" : Nothing
  , "Unlimited" : Nothing
  }

type DatasetContentDeliveryRuleDestination =
  { "IotEventsDestinationConfiguration" :: Maybe IotEventsDestinationConfiguration
  , "S3DestinationConfiguration" :: Maybe S3DestinationConfiguration
  }

datasetContentDeliveryRuleDestination :: DatasetContentDeliveryRuleDestination
datasetContentDeliveryRuleDestination =
  { "IotEventsDestinationConfiguration" : Nothing
  , "S3DestinationConfiguration" : Nothing
  }

type QueryAction =
  { "SqlQuery" :: String
  , "Filters" :: Maybe (Array Filter)
  }

queryAction :: { "SqlQuery" :: String } -> QueryAction
queryAction required =
  merge required
    { "Filters" : Nothing
    }

type ContainerAction =
  { "ExecutionRoleArn" :: String
  , "Image" :: String
  , "ResourceConfiguration" :: ResourceConfiguration
  , "Variables" :: Maybe (Array Variable)
  }

containerAction :: { "ExecutionRoleArn" :: String, "Image" :: String, "ResourceConfiguration" :: ResourceConfiguration } -> ContainerAction
containerAction required =
  merge required
    { "Variables" : Nothing
    }

type Action =
  { "ActionName" :: String
  , "ContainerAction" :: Maybe ContainerAction
  , "QueryAction" :: Maybe QueryAction
  }

action :: { "ActionName" :: String } -> Action
action required =
  merge required
    { "ContainerAction" : Nothing
    , "QueryAction" : Nothing
    }

type IotEventsDestinationConfiguration =
  { "InputName" :: String
  , "RoleArn" :: String
  }

iotEventsDestinationConfiguration :: { "InputName" :: String, "RoleArn" :: String } -> IotEventsDestinationConfiguration
iotEventsDestinationConfiguration required =
  required

type Trigger =
  { "Schedule" :: Maybe Schedule
  , "TriggeringDataset" :: Maybe TriggeringDataset
  }

trigger :: Trigger
trigger =
  { "Schedule" : Nothing
  , "TriggeringDataset" : Nothing
  }

type DatasetContentDeliveryRule =
  { "Destination" :: DatasetContentDeliveryRuleDestination
  , "EntryName" :: Maybe String
  }

datasetContentDeliveryRule :: { "Destination" :: DatasetContentDeliveryRuleDestination } -> DatasetContentDeliveryRule
datasetContentDeliveryRule required =
  merge required
    { "EntryName" : Nothing
    }

type DeltaTime =
  { "TimeExpression" :: String
  , "OffsetSeconds" :: Int
  }

deltaTime :: { "TimeExpression" :: String, "OffsetSeconds" :: Int } -> DeltaTime
deltaTime required =
  required

type Filter =
  { "DeltaTime" :: Maybe DeltaTime
  }

filter :: Filter
filter =
  { "DeltaTime" : Nothing
  }

type Variable =
  { "VariableName" :: String
  , "DatasetContentVersionValue" :: Maybe DatasetContentVersionValue
  , "DoubleValue" :: Maybe Number
  , "OutputFileUriValue" :: Maybe OutputFileUriValue
  , "StringValue" :: Maybe String
  }

variable :: { "VariableName" :: String } -> Variable
variable required =
  merge required
    { "DatasetContentVersionValue" : Nothing
    , "DoubleValue" : Nothing
    , "OutputFileUriValue" : Nothing
    , "StringValue" : Nothing
    }

type OutputFileUriValue =
  { "FileName" :: Maybe String
  }

outputFileUriValue :: OutputFileUriValue
outputFileUriValue =
  { "FileName" : Nothing
  }

type GlueConfiguration =
  { "TableName" :: String
  , "DatabaseName" :: String
  }

glueConfiguration :: { "TableName" :: String, "DatabaseName" :: String } -> GlueConfiguration
glueConfiguration required =
  required

type DatasetContentVersionValue =
  { "DatasetName" :: Maybe String
  }

datasetContentVersionValue :: DatasetContentVersionValue
datasetContentVersionValue =
  { "DatasetName" : Nothing
  }