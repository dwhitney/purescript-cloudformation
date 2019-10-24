module CloudFormation.AWS.IoTAnalytics.Pipeline where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (Json)


-- | `AWS::IoTAnalytics::Pipeline`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html
-- |
-- | - `PipelineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelinename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-tags
-- | - `PipelineActivities`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelineactivities
type Pipeline =
  { "PipelineActivities" :: Array Activity
  , "PipelineName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

pipeline :: { "PipelineActivities" :: Array Activity } -> Pipeline
pipeline required =
  merge required
    { "PipelineName" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::IoTAnalytics::Pipeline.DeviceRegistryEnrich`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html
-- |
-- | - `Attribute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-attribute
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-next
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-thingname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-rolearn
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceregistryenrich.html#cfn-iotanalytics-pipeline-deviceregistryenrich-name
type DeviceRegistryEnrich =
  { "Attribute" :: Maybe String
  , "Next" :: Maybe String
  , "ThingName" :: Maybe String
  , "RoleArn" :: Maybe String
  , "Name" :: Maybe String
  }

deviceRegistryEnrich :: DeviceRegistryEnrich
deviceRegistryEnrich =
  { "Attribute" : Nothing
  , "Next" : Nothing
  , "ThingName" : Nothing
  , "RoleArn" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.AddAttributes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html
-- |
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-next
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-attributes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-name
type AddAttributes =
  { "Next" :: Maybe String
  , "Attributes" :: Maybe Json
  , "Name" :: Maybe String
  }

addAttributes :: AddAttributes
addAttributes =
  { "Next" : Nothing
  , "Attributes" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Datastore`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html
-- |
-- | - `DatastoreName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-datastorename
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-name
type Datastore =
  { "DatastoreName" :: Maybe String
  , "Name" :: Maybe String
  }

datastore :: Datastore
datastore =
  { "DatastoreName" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.RemoveAttributes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html
-- |
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-next
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-attributes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-name
type RemoveAttributes =
  { "Next" :: Maybe String
  , "Attributes" :: Maybe (Array String)
  , "Name" :: Maybe String
  }

removeAttributes :: RemoveAttributes
removeAttributes =
  { "Next" : Nothing
  , "Attributes" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Math`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html
-- |
-- | - `Attribute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-attribute
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-next
-- | - `Math`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-math
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-math.html#cfn-iotanalytics-pipeline-math-name
type Math =
  { "Attribute" :: Maybe String
  , "Next" :: Maybe String
  , "Math" :: Maybe String
  , "Name" :: Maybe String
  }

math :: Math
math =
  { "Attribute" : Nothing
  , "Next" : Nothing
  , "Math" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Activity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html
-- |
-- | - `SelectAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-selectattributes
-- | - `Datastore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-datastore
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-filter
-- | - `AddAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-addattributes
-- | - `Channel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-channel
-- | - `DeviceShadowEnrich`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceshadowenrich
-- | - `Math`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-math
-- | - `Lambda`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-lambda
-- | - `DeviceRegistryEnrich`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceregistryenrich
-- | - `RemoveAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-removeattributes
type Activity =
  { "SelectAttributes" :: Maybe SelectAttributes
  , "Datastore" :: Maybe Datastore
  , "Filter" :: Maybe Filter
  , "AddAttributes" :: Maybe AddAttributes
  , "Channel" :: Maybe Channel
  , "DeviceShadowEnrich" :: Maybe DeviceShadowEnrich
  , "Math" :: Maybe Math
  , "Lambda" :: Maybe Lambda
  , "DeviceRegistryEnrich" :: Maybe DeviceRegistryEnrich
  , "RemoveAttributes" :: Maybe RemoveAttributes
  }

activity :: Activity
activity =
  { "SelectAttributes" : Nothing
  , "Datastore" : Nothing
  , "Filter" : Nothing
  , "AddAttributes" : Nothing
  , "Channel" : Nothing
  , "DeviceShadowEnrich" : Nothing
  , "Math" : Nothing
  , "Lambda" : Nothing
  , "DeviceRegistryEnrich" : Nothing
  , "RemoveAttributes" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html
-- |
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-filter
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-next
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-name
type Filter =
  { "Filter" :: Maybe String
  , "Next" :: Maybe String
  , "Name" :: Maybe String
  }

filter :: Filter
filter =
  { "Filter" : Nothing
  , "Next" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Channel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html
-- |
-- | - `ChannelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-channelname
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-next
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-name
type Channel =
  { "ChannelName" :: Maybe String
  , "Next" :: Maybe String
  , "Name" :: Maybe String
  }

channel :: Channel
channel =
  { "ChannelName" : Nothing
  , "Next" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.SelectAttributes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html
-- |
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-next
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-attributes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-selectattributes.html#cfn-iotanalytics-pipeline-selectattributes-name
type SelectAttributes =
  { "Next" :: Maybe String
  , "Attributes" :: Maybe (Array String)
  , "Name" :: Maybe String
  }

selectAttributes :: SelectAttributes
selectAttributes =
  { "Next" : Nothing
  , "Attributes" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.Lambda`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html
-- |
-- | - `BatchSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-batchsize
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-next
-- | - `LambdaName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-lambdaname
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-lambda.html#cfn-iotanalytics-pipeline-lambda-name
type Lambda =
  { "BatchSize" :: Maybe Int
  , "Next" :: Maybe String
  , "LambdaName" :: Maybe String
  , "Name" :: Maybe String
  }

lambda :: Lambda
lambda =
  { "BatchSize" : Nothing
  , "Next" : Nothing
  , "LambdaName" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::IoTAnalytics::Pipeline.DeviceShadowEnrich`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html
-- |
-- | - `Attribute`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-attribute
-- | - `Next`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-next
-- | - `ThingName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-thingname
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-rolearn
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-deviceshadowenrich.html#cfn-iotanalytics-pipeline-deviceshadowenrich-name
type DeviceShadowEnrich =
  { "Attribute" :: Maybe String
  , "Next" :: Maybe String
  , "ThingName" :: Maybe String
  , "RoleArn" :: Maybe String
  , "Name" :: Maybe String
  }

deviceShadowEnrich :: DeviceShadowEnrich
deviceShadowEnrich =
  { "Attribute" : Nothing
  , "Next" : Nothing
  , "ThingName" : Nothing
  , "RoleArn" : Nothing
  , "Name" : Nothing
  }