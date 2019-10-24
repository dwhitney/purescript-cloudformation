module CloudFormation.AWS.IoT.TopicRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::IoT::TopicRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html-- |
-- | - `RuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html#cfn-iot-topicrule-rulename
-- | - `TopicRulePayload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html#cfn-iot-topicrule-topicrulepayload
type TopicRule =
  { "TopicRulePayload" :: TopicRulePayload
  , "RuleName" :: Maybe String
  }

topicRule :: { "TopicRulePayload" :: TopicRulePayload } -> TopicRule
topicRule required =
  merge required
    { "RuleName" : Nothing
    }

-- | `AWS::IoT::TopicRule.CloudwatchMetricAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricname
-- | - `MetricNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricnamespace
-- | - `MetricTimestamp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metrictimestamp
-- | - `MetricUnit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricunit
-- | - `MetricValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricvalue
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-rolearn
type CloudwatchMetricAction =
  { "MetricName" :: String
  , "MetricNamespace" :: String
  , "MetricUnit" :: String
  , "MetricValue" :: String
  , "RoleArn" :: String
  , "MetricTimestamp" :: Maybe String
  }

cloudwatchMetricAction :: { "MetricName" :: String, "MetricNamespace" :: String, "MetricUnit" :: String, "MetricValue" :: String, "RoleArn" :: String } -> CloudwatchMetricAction
cloudwatchMetricAction required =
  merge required
    { "MetricTimestamp" : Nothing
    }

-- | `AWS::IoT::TopicRule.CloudwatchAlarmAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html-- |
-- | - `AlarmName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-alarmname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-rolearn
-- | - `StateReason`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statereason
-- | - `StateValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statevalue
type CloudwatchAlarmAction =
  { "AlarmName" :: String
  , "RoleArn" :: String
  , "StateReason" :: String
  , "StateValue" :: String
  }

cloudwatchAlarmAction :: { "AlarmName" :: String, "RoleArn" :: String, "StateReason" :: String, "StateValue" :: String } -> CloudwatchAlarmAction
cloudwatchAlarmAction required =
  required

-- | `AWS::IoT::TopicRule.DynamoDBv2Action`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html-- |
-- | - `PutItem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-putitem
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbv2action.html#cfn-iot-topicrule-dynamodbv2action-rolearn
type DynamoDBv2Action =
  { "PutItem" :: Maybe PutItemInput
  , "RoleArn" :: Maybe String
  }

dynamoDBv2Action :: DynamoDBv2Action
dynamoDBv2Action =
  { "PutItem" : Nothing
  , "RoleArn" : Nothing
  }

-- | `AWS::IoT::TopicRule.TopicRulePayload`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-actions
-- | - `AwsIotSqlVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-awsiotsqlversion
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-description
-- | - `ErrorAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-erroraction
-- | - `RuleDisabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-ruledisabled
-- | - `Sql`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-sql
type TopicRulePayload =
  { "Actions" :: Array Action
  , "RuleDisabled" :: Boolean
  , "Sql" :: String
  , "AwsIotSqlVersion" :: Maybe String
  , "Description" :: Maybe String
  , "ErrorAction" :: Maybe Action
  }

topicRulePayload :: { "Actions" :: Array Action, "RuleDisabled" :: Boolean, "Sql" :: String } -> TopicRulePayload
topicRulePayload required =
  merge required
    { "AwsIotSqlVersion" : Nothing
    , "Description" : Nothing
    , "ErrorAction" : Nothing
    }

-- | `AWS::IoT::TopicRule.StepFunctionsAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html-- |
-- | - `ExecutionNamePrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-executionnameprefix
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-rolearn
-- | - `StateMachineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-stepfunctionsaction.html#cfn-iot-topicrule-stepfunctionsaction-statemachinename
type StepFunctionsAction =
  { "RoleArn" :: String
  , "StateMachineName" :: String
  , "ExecutionNamePrefix" :: Maybe String
  }

stepFunctionsAction :: { "RoleArn" :: String, "StateMachineName" :: String } -> StepFunctionsAction
stepFunctionsAction required =
  merge required
    { "ExecutionNamePrefix" : Nothing
    }

-- | `AWS::IoT::TopicRule.RepublishAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-republishaction.html-- |
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-republishaction.html#cfn-iot-topicrule-republishaction-rolearn
-- | - `Topic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-republishaction.html#cfn-iot-topicrule-republishaction-topic
type RepublishAction =
  { "RoleArn" :: String
  , "Topic" :: String
  }

republishAction :: { "RoleArn" :: String, "Topic" :: String } -> RepublishAction
republishAction required =
  required

-- | `AWS::IoT::TopicRule.IotAnalyticsAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html-- |
-- | - `ChannelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-channelname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotanalyticsaction.html#cfn-iot-topicrule-iotanalyticsaction-rolearn
type IotAnalyticsAction =
  { "ChannelName" :: String
  , "RoleArn" :: String
  }

iotAnalyticsAction :: { "ChannelName" :: String, "RoleArn" :: String } -> IotAnalyticsAction
iotAnalyticsAction required =
  required

-- | `AWS::IoT::TopicRule.Action`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html-- |
-- | - `CloudwatchAlarm`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchalarm
-- | - `CloudwatchMetric`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-cloudwatchmetric
-- | - `DynamoDB`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodb
-- | - `DynamoDBv2`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-dynamodbv2
-- | - `Elasticsearch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-elasticsearch
-- | - `Firehose`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-firehose
-- | - `IotAnalytics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-iotanalytics
-- | - `Kinesis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-kinesis
-- | - `Lambda`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-lambda
-- | - `Republish`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-republish
-- | - `S3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-s3
-- | - `Sns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sns
-- | - `Sqs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-sqs
-- | - `StepFunctions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-action.html#cfn-iot-topicrule-action-stepfunctions
type Action =
  { "CloudwatchAlarm" :: Maybe CloudwatchAlarmAction
  , "CloudwatchMetric" :: Maybe CloudwatchMetricAction
  , "DynamoDB" :: Maybe DynamoDBAction
  , "DynamoDBv2" :: Maybe DynamoDBv2Action
  , "Elasticsearch" :: Maybe ElasticsearchAction
  , "Firehose" :: Maybe FirehoseAction
  , "IotAnalytics" :: Maybe IotAnalyticsAction
  , "Kinesis" :: Maybe KinesisAction
  , "Lambda" :: Maybe LambdaAction
  , "Republish" :: Maybe RepublishAction
  , "S3" :: Maybe S3Action
  , "Sns" :: Maybe SnsAction
  , "Sqs" :: Maybe SqsAction
  , "StepFunctions" :: Maybe StepFunctionsAction
  }

action :: Action
action =
  { "CloudwatchAlarm" : Nothing
  , "CloudwatchMetric" : Nothing
  , "DynamoDB" : Nothing
  , "DynamoDBv2" : Nothing
  , "Elasticsearch" : Nothing
  , "Firehose" : Nothing
  , "IotAnalytics" : Nothing
  , "Kinesis" : Nothing
  , "Lambda" : Nothing
  , "Republish" : Nothing
  , "S3" : Nothing
  , "Sns" : Nothing
  , "Sqs" : Nothing
  , "StepFunctions" : Nothing
  }

-- | `AWS::IoT::TopicRule.KinesisAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html-- |
-- | - `PartitionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-partitionkey
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-rolearn
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kinesisaction.html#cfn-iot-topicrule-kinesisaction-streamname
type KinesisAction =
  { "RoleArn" :: String
  , "StreamName" :: String
  , "PartitionKey" :: Maybe String
  }

kinesisAction :: { "RoleArn" :: String, "StreamName" :: String } -> KinesisAction
kinesisAction required =
  merge required
    { "PartitionKey" : Nothing
    }

-- | `AWS::IoT::TopicRule.DynamoDBAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html-- |
-- | - `HashKeyField`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeyfield
-- | - `HashKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeytype
-- | - `HashKeyValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-hashkeyvalue
-- | - `PayloadField`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-payloadfield
-- | - `RangeKeyField`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeyfield
-- | - `RangeKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeytype
-- | - `RangeKeyValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rangekeyvalue
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-rolearn
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-dynamodbaction.html#cfn-iot-topicrule-dynamodbaction-tablename
type DynamoDBAction =
  { "HashKeyField" :: String
  , "HashKeyValue" :: String
  , "RoleArn" :: String
  , "TableName" :: String
  , "HashKeyType" :: Maybe String
  , "PayloadField" :: Maybe String
  , "RangeKeyField" :: Maybe String
  , "RangeKeyType" :: Maybe String
  , "RangeKeyValue" :: Maybe String
  }

dynamoDBAction :: { "HashKeyField" :: String, "HashKeyValue" :: String, "RoleArn" :: String, "TableName" :: String } -> DynamoDBAction
dynamoDBAction required =
  merge required
    { "HashKeyType" : Nothing
    , "PayloadField" : Nothing
    , "RangeKeyField" : Nothing
    , "RangeKeyType" : Nothing
    , "RangeKeyValue" : Nothing
    }

-- | `AWS::IoT::TopicRule.ElasticsearchAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html-- |
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html#cfn-iot-topicrule-elasticsearchaction-endpoint
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html#cfn-iot-topicrule-elasticsearchaction-id
-- | - `Index`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html#cfn-iot-topicrule-elasticsearchaction-index
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html#cfn-iot-topicrule-elasticsearchaction-rolearn
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-elasticsearchaction.html#cfn-iot-topicrule-elasticsearchaction-type
type ElasticsearchAction =
  { "Endpoint" :: String
  , "Id" :: String
  , "Index" :: String
  , "RoleArn" :: String
  , "Type" :: String
  }

elasticsearchAction :: { "Endpoint" :: String, "Id" :: String, "Index" :: String, "RoleArn" :: String, "Type" :: String } -> ElasticsearchAction
elasticsearchAction required =
  required

-- | `AWS::IoT::TopicRule.LambdaAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html#cfn-iot-topicrule-lambdaaction-functionarn
type LambdaAction =
  { "FunctionArn" :: Maybe String
  }

lambdaAction :: LambdaAction
lambdaAction =
  { "FunctionArn" : Nothing
  }

-- | `AWS::IoT::TopicRule.FirehoseAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html-- |
-- | - `DeliveryStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-deliverystreamname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-rolearn
-- | - `Separator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-separator
type FirehoseAction =
  { "DeliveryStreamName" :: String
  , "RoleArn" :: String
  , "Separator" :: Maybe String
  }

firehoseAction :: { "DeliveryStreamName" :: String, "RoleArn" :: String } -> FirehoseAction
firehoseAction required =
  merge required
    { "Separator" : Nothing
    }

-- | `AWS::IoT::TopicRule.SnsAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html-- |
-- | - `MessageFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-messageformat
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-rolearn
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-targetarn
type SnsAction =
  { "RoleArn" :: String
  , "TargetArn" :: String
  , "MessageFormat" :: Maybe String
  }

snsAction :: { "RoleArn" :: String, "TargetArn" :: String } -> SnsAction
snsAction required =
  merge required
    { "MessageFormat" : Nothing
    }

-- | `AWS::IoT::TopicRule.PutItemInput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html-- |
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html#cfn-iot-topicrule-putiteminput-tablename
type PutItemInput =
  { "TableName" :: String
  }

putItemInput :: { "TableName" :: String } -> PutItemInput
putItemInput required =
  required

-- | `AWS::IoT::TopicRule.SqsAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html-- |
-- | - `QueueUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-queueurl
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-rolearn
-- | - `UseBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sqsaction.html#cfn-iot-topicrule-sqsaction-usebase64
type SqsAction =
  { "QueueUrl" :: String
  , "RoleArn" :: String
  , "UseBase64" :: Maybe Boolean
  }

sqsAction :: { "QueueUrl" :: String, "RoleArn" :: String } -> SqsAction
sqsAction required =
  merge required
    { "UseBase64" : Nothing
    }

-- | `AWS::IoT::TopicRule.S3Action`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-s3action.html-- |
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-s3action.html#cfn-iot-topicrule-s3action-bucketname
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-s3action.html#cfn-iot-topicrule-s3action-key
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-s3action.html#cfn-iot-topicrule-s3action-rolearn
type S3Action =
  { "BucketName" :: String
  , "Key" :: String
  , "RoleArn" :: String
  }

s3Action :: { "BucketName" :: String, "Key" :: String, "RoleArn" :: String } -> S3Action
s3Action required =
  required