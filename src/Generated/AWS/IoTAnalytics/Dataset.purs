module CloudFormation.AWS.IoTAnalytics.Dataset where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoTAnalytics::Dataset`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-actions
-- | - `DatasetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-datasetname
-- | - `ContentDeliveryRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-contentdeliveryrules
-- | - `Triggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-triggers
-- | - `VersioningConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-versioningconfiguration
-- | - `RetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-retentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-tags
newtype Dataset = Dataset
  { "Actions" :: Array Action
  , "DatasetName" :: Maybe String
  , "ContentDeliveryRules" :: Maybe (Array DatasetContentDeliveryRule)
  , "Triggers" :: Maybe (Array Trigger)
  , "VersioningConfiguration" :: Maybe VersioningConfiguration
  , "RetentionPeriod" :: Maybe RetentionPeriod
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDataset :: Newtype Dataset _
instance resourceDataset :: Resource Dataset where type_ _ = "AWS::IoTAnalytics::Dataset"

dataset :: { "Actions" :: Array Action } -> Dataset
dataset required = Dataset
  (merge required
    { "DatasetName" : Nothing
    , "ContentDeliveryRules" : Nothing
    , "Triggers" : Nothing
    , "VersioningConfiguration" : Nothing
    , "RetentionPeriod" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.S3DestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html
-- |
-- | - `GlueConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-glueconfiguration
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-key
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-rolearn
type S3DestinationConfiguration =
  { "Bucket" :: String
  , "Key" :: String
  , "RoleArn" :: String
  , "GlueConfiguration" :: Maybe GlueConfiguration
  }

s3DestinationConfiguration :: { "Bucket" :: String, "Key" :: String, "RoleArn" :: String } -> S3DestinationConfiguration
s3DestinationConfiguration required =
  (merge required
    { "GlueConfiguration" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.RetentionPeriod`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html
-- |
-- | - `NumberOfDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-numberofdays
-- | - `Unlimited`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-unlimited
type RetentionPeriod =
  { "NumberOfDays" :: Int
  , "Unlimited" :: Boolean
  }

retentionPeriod :: { "NumberOfDays" :: Int, "Unlimited" :: Boolean } -> RetentionPeriod
retentionPeriod required =
  required

-- | `AWS::IoTAnalytics::Dataset.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html
-- |
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html#cfn-iotanalytics-dataset-trigger-schedule-scheduleexpression
type Schedule =
  { "ScheduleExpression" :: String
  }

schedule :: { "ScheduleExpression" :: String } -> Schedule
schedule required =
  required

-- | `AWS::IoTAnalytics::Dataset.TriggeringDataset`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html
-- |
-- | - `DatasetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html#cfn-iotanalytics-dataset-triggeringdataset-datasetname
type TriggeringDataset =
  { "DatasetName" :: String
  }

triggeringDataset :: { "DatasetName" :: String } -> TriggeringDataset
triggeringDataset required =
  required

-- | `AWS::IoTAnalytics::Dataset.ResourceConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html
-- |
-- | - `VolumeSizeInGB`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-volumesizeingb
-- | - `ComputeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-computetype
type ResourceConfiguration =
  { "VolumeSizeInGB" :: Int
  , "ComputeType" :: String
  }

resourceConfiguration :: { "VolumeSizeInGB" :: Int, "ComputeType" :: String } -> ResourceConfiguration
resourceConfiguration required =
  required

-- | `AWS::IoTAnalytics::Dataset.VersioningConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html
-- |
-- | - `MaxVersions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-maxversions
-- | - `Unlimited`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-unlimited
type VersioningConfiguration =
  { "MaxVersions" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

versioningConfiguration :: VersioningConfiguration
versioningConfiguration =
  { "MaxVersions" : Nothing
  , "Unlimited" : Nothing
  }

-- | `AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html
-- |
-- | - `IotEventsDestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration
-- | - `S3DestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-s3destinationconfiguration
type DatasetContentDeliveryRuleDestination =
  { "IotEventsDestinationConfiguration" :: Maybe IotEventsDestinationConfiguration
  , "S3DestinationConfiguration" :: Maybe S3DestinationConfiguration
  }

datasetContentDeliveryRuleDestination :: DatasetContentDeliveryRuleDestination
datasetContentDeliveryRuleDestination =
  { "IotEventsDestinationConfiguration" : Nothing
  , "S3DestinationConfiguration" : Nothing
  }

-- | `AWS::IoTAnalytics::Dataset.QueryAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html
-- |
-- | - `Filters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-filters
-- | - `SqlQuery`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-sqlquery
type QueryAction =
  { "SqlQuery" :: String
  , "Filters" :: Maybe (Array Filter)
  }

queryAction :: { "SqlQuery" :: String } -> QueryAction
queryAction required =
  (merge required
    { "Filters" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.ContainerAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html
-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-variables
-- | - `ExecutionRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-executionrolearn
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-image
-- | - `ResourceConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-resourceconfiguration
type ContainerAction =
  { "ExecutionRoleArn" :: String
  , "Image" :: String
  , "ResourceConfiguration" :: ResourceConfiguration
  , "Variables" :: Maybe (Array Variable)
  }

containerAction :: { "ExecutionRoleArn" :: String, "Image" :: String, "ResourceConfiguration" :: ResourceConfiguration } -> ContainerAction
containerAction required =
  (merge required
    { "Variables" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html
-- |
-- | - `ActionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-actionname
-- | - `ContainerAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-containeraction
-- | - `QueryAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-queryaction
type Action =
  { "ActionName" :: String
  , "ContainerAction" :: Maybe ContainerAction
  , "QueryAction" :: Maybe QueryAction
  }

action :: { "ActionName" :: String } -> Action
action required =
  (merge required
    { "ContainerAction" : Nothing
    , "QueryAction" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.IotEventsDestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html
-- |
-- | - `InputName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-inputname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-ioteventsdestinationconfiguration.html#cfn-iotanalytics-dataset-ioteventsdestinationconfiguration-rolearn
type IotEventsDestinationConfiguration =
  { "InputName" :: String
  , "RoleArn" :: String
  }

iotEventsDestinationConfiguration :: { "InputName" :: String, "RoleArn" :: String } -> IotEventsDestinationConfiguration
iotEventsDestinationConfiguration required =
  required

-- | `AWS::IoTAnalytics::Dataset.Trigger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html
-- |
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-schedule
-- | - `TriggeringDataset`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-triggeringdataset
type Trigger =
  { "Schedule" :: Maybe Schedule
  , "TriggeringDataset" :: Maybe TriggeringDataset
  }

trigger :: Trigger
trigger =
  { "Schedule" : Nothing
  , "TriggeringDataset" : Nothing
  }

-- | `AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html
-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html#cfn-iotanalytics-dataset-datasetcontentdeliveryrule-destination
-- | - `EntryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryrule.html#cfn-iotanalytics-dataset-datasetcontentdeliveryrule-entryname
type DatasetContentDeliveryRule =
  { "Destination" :: DatasetContentDeliveryRuleDestination
  , "EntryName" :: Maybe String
  }

datasetContentDeliveryRule :: { "Destination" :: DatasetContentDeliveryRuleDestination } -> DatasetContentDeliveryRule
datasetContentDeliveryRule required =
  (merge required
    { "EntryName" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.DeltaTime`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html
-- |
-- | - `TimeExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-timeexpression
-- | - `OffsetSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-offsetseconds
type DeltaTime =
  { "TimeExpression" :: String
  , "OffsetSeconds" :: Int
  }

deltaTime :: { "TimeExpression" :: String, "OffsetSeconds" :: Int } -> DeltaTime
deltaTime required =
  required

-- | `AWS::IoTAnalytics::Dataset.Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html
-- |
-- | - `DeltaTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html#cfn-iotanalytics-dataset-filter-deltatime
type Filter =
  { "DeltaTime" :: Maybe DeltaTime
  }

filter :: Filter
filter =
  { "DeltaTime" : Nothing
  }

-- | `AWS::IoTAnalytics::Dataset.Variable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html
-- |
-- | - `DatasetContentVersionValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue
-- | - `DoubleValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-doublevalue
-- | - `OutputFileUriValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-outputfileurivalue
-- | - `VariableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-variablename
-- | - `StringValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable.html#cfn-iotanalytics-dataset-variable-stringvalue
type Variable =
  { "VariableName" :: String
  , "DatasetContentVersionValue" :: Maybe DatasetContentVersionValue
  , "DoubleValue" :: Maybe Number
  , "OutputFileUriValue" :: Maybe OutputFileUriValue
  , "StringValue" :: Maybe String
  }

variable :: { "VariableName" :: String } -> Variable
variable required =
  (merge required
    { "DatasetContentVersionValue" : Nothing
    , "DoubleValue" : Nothing
    , "OutputFileUriValue" : Nothing
    , "StringValue" : Nothing
    })

-- | `AWS::IoTAnalytics::Dataset.OutputFileUriValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-outputfileurivalue.html
-- |
-- | - `FileName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-outputfileurivalue.html#cfn-iotanalytics-dataset-variable-outputfileurivalue-filename
type OutputFileUriValue =
  { "FileName" :: Maybe String
  }

outputFileUriValue :: OutputFileUriValue
outputFileUriValue =
  { "FileName" : Nothing
  }

-- | `AWS::IoTAnalytics::Dataset.GlueConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html
-- |
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-tablename
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-databasename
type GlueConfiguration =
  { "TableName" :: String
  , "DatabaseName" :: String
  }

glueConfiguration :: { "TableName" :: String, "DatabaseName" :: String } -> GlueConfiguration
glueConfiguration required =
  required

-- | `AWS::IoTAnalytics::Dataset.DatasetContentVersionValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html
-- |
-- | - `DatasetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue-datasetname
type DatasetContentVersionValue =
  { "DatasetName" :: Maybe String
  }

datasetContentVersionValue :: DatasetContentVersionValue
datasetContentVersionValue =
  { "DatasetName" : Nothing
  }