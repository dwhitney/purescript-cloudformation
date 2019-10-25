module CloudFormation.AWS.IoTAnalytics.Dataset where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Actions" :: Value (Array Action)
  , "DatasetName" :: Maybe (Value String)
  , "ContentDeliveryRules" :: Maybe (Value (Array DatasetContentDeliveryRule))
  , "Triggers" :: Maybe (Value (Array Trigger))
  , "VersioningConfiguration" :: Maybe (Value VersioningConfiguration)
  , "RetentionPeriod" :: Maybe (Value RetentionPeriod)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDataset :: Newtype Dataset _
derive newtype instance writeDataset :: WriteForeign Dataset
instance resourceDataset :: Resource Dataset where type_ _ = "AWS::IoTAnalytics::Dataset"

dataset :: { "Actions" :: Value (Array Action) } -> Dataset
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
  { "Bucket" :: Value String
  , "Key" :: Value String
  , "RoleArn" :: Value String
  , "GlueConfiguration" :: Maybe (Value GlueConfiguration)
  }

s3DestinationConfiguration :: { "Bucket" :: Value String, "Key" :: Value String, "RoleArn" :: Value String } -> S3DestinationConfiguration
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
  { "NumberOfDays" :: Value Int
  , "Unlimited" :: Value Boolean
  }

retentionPeriod :: { "NumberOfDays" :: Value Int, "Unlimited" :: Value Boolean } -> RetentionPeriod
retentionPeriod required =
  required

-- | `AWS::IoTAnalytics::Dataset.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html
-- |
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html#cfn-iotanalytics-dataset-trigger-schedule-scheduleexpression
type Schedule =
  { "ScheduleExpression" :: Value String
  }

schedule :: { "ScheduleExpression" :: Value String } -> Schedule
schedule required =
  required

-- | `AWS::IoTAnalytics::Dataset.TriggeringDataset`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html
-- |
-- | - `DatasetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html#cfn-iotanalytics-dataset-triggeringdataset-datasetname
type TriggeringDataset =
  { "DatasetName" :: Value String
  }

triggeringDataset :: { "DatasetName" :: Value String } -> TriggeringDataset
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
  { "VolumeSizeInGB" :: Value Int
  , "ComputeType" :: Value String
  }

resourceConfiguration :: { "VolumeSizeInGB" :: Value Int, "ComputeType" :: Value String } -> ResourceConfiguration
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
  { "MaxVersions" :: Maybe (Value Int)
  , "Unlimited" :: Maybe (Value Boolean)
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
  { "IotEventsDestinationConfiguration" :: Maybe (Value IotEventsDestinationConfiguration)
  , "S3DestinationConfiguration" :: Maybe (Value S3DestinationConfiguration)
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
  { "SqlQuery" :: Value String
  , "Filters" :: Maybe (Value (Array Filter))
  }

queryAction :: { "SqlQuery" :: Value String } -> QueryAction
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
  { "ExecutionRoleArn" :: Value String
  , "Image" :: Value String
  , "ResourceConfiguration" :: Value ResourceConfiguration
  , "Variables" :: Maybe (Value (Array Variable))
  }

containerAction :: { "ExecutionRoleArn" :: Value String, "Image" :: Value String, "ResourceConfiguration" :: Value ResourceConfiguration } -> ContainerAction
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
  { "ActionName" :: Value String
  , "ContainerAction" :: Maybe (Value ContainerAction)
  , "QueryAction" :: Maybe (Value QueryAction)
  }

action :: { "ActionName" :: Value String } -> Action
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
  { "InputName" :: Value String
  , "RoleArn" :: Value String
  }

iotEventsDestinationConfiguration :: { "InputName" :: Value String, "RoleArn" :: Value String } -> IotEventsDestinationConfiguration
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
  { "Schedule" :: Maybe (Value Schedule)
  , "TriggeringDataset" :: Maybe (Value TriggeringDataset)
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
  { "Destination" :: Value DatasetContentDeliveryRuleDestination
  , "EntryName" :: Maybe (Value String)
  }

datasetContentDeliveryRule :: { "Destination" :: Value DatasetContentDeliveryRuleDestination } -> DatasetContentDeliveryRule
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
  { "TimeExpression" :: Value String
  , "OffsetSeconds" :: Value Int
  }

deltaTime :: { "TimeExpression" :: Value String, "OffsetSeconds" :: Value Int } -> DeltaTime
deltaTime required =
  required

-- | `AWS::IoTAnalytics::Dataset.Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html
-- |
-- | - `DeltaTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html#cfn-iotanalytics-dataset-filter-deltatime
type Filter =
  { "DeltaTime" :: Maybe (Value DeltaTime)
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
  { "VariableName" :: Value String
  , "DatasetContentVersionValue" :: Maybe (Value DatasetContentVersionValue)
  , "DoubleValue" :: Maybe (Value Number)
  , "OutputFileUriValue" :: Maybe (Value OutputFileUriValue)
  , "StringValue" :: Maybe (Value String)
  }

variable :: { "VariableName" :: Value String } -> Variable
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
  { "FileName" :: Maybe (Value String)
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
  { "TableName" :: Value String
  , "DatabaseName" :: Value String
  }

glueConfiguration :: { "TableName" :: Value String, "DatabaseName" :: Value String } -> GlueConfiguration
glueConfiguration required =
  required

-- | `AWS::IoTAnalytics::Dataset.DatasetContentVersionValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html
-- |
-- | - `DatasetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue-datasetname
type DatasetContentVersionValue =
  { "DatasetName" :: Maybe (Value String)
  }

datasetContentVersionValue :: DatasetContentVersionValue
datasetContentVersionValue =
  { "DatasetName" : Nothing
  }