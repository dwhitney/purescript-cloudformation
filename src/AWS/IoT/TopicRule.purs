module AWS.IoT.TopicRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type TopicRule =
  { "TopicRulePayload" :: TopicRulePayload
  , "RuleName" :: Maybe String
  }

topicRule :: { "TopicRulePayload" :: TopicRulePayload } -> TopicRule
topicRule required =
  merge required
    { "RuleName" : Nothing
    }

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

type CloudwatchAlarmAction =
  { "AlarmName" :: String
  , "RoleArn" :: String
  , "StateReason" :: String
  , "StateValue" :: String
  }

cloudwatchAlarmAction :: { "AlarmName" :: String, "RoleArn" :: String, "StateReason" :: String, "StateValue" :: String } -> CloudwatchAlarmAction
cloudwatchAlarmAction required =
  required

type DynamoDBv2Action =
  { "PutItem" :: Maybe PutItemInput
  , "RoleArn" :: Maybe String
  }

dynamoDBv2Action :: DynamoDBv2Action
dynamoDBv2Action =
  { "PutItem" : Nothing
  , "RoleArn" : Nothing
  }

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

type RepublishAction =
  { "RoleArn" :: String
  , "Topic" :: String
  }

republishAction :: { "RoleArn" :: String, "Topic" :: String } -> RepublishAction
republishAction required =
  required

type IotAnalyticsAction =
  { "ChannelName" :: String
  , "RoleArn" :: String
  }

iotAnalyticsAction :: { "ChannelName" :: String, "RoleArn" :: String } -> IotAnalyticsAction
iotAnalyticsAction required =
  required

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

type LambdaAction =
  { "FunctionArn" :: Maybe String
  }

lambdaAction :: LambdaAction
lambdaAction =
  { "FunctionArn" : Nothing
  }

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

type PutItemInput =
  { "TableName" :: String
  }

putItemInput :: { "TableName" :: String } -> PutItemInput
putItemInput required =
  required

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

type S3Action =
  { "BucketName" :: String
  , "Key" :: String
  , "RoleArn" :: String
  }

s3Action :: { "BucketName" :: String, "Key" :: String, "RoleArn" :: String } -> S3Action
s3Action required =
  required