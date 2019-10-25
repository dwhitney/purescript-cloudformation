module CloudFormation.AWS.IoTAnalytics.Pipeline where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::IoTAnalytics::Pipeline`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html
-- |
-- | - `PipelineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelinename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-tags
-- | - `PipelineActivities`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelineactivities
newtype Pipeline = Pipeline
  { "PipelineActivities" :: Value (Array Activity)
  , "PipelineName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypePipeline :: Newtype Pipeline _
derive newtype instance writePipeline :: WriteForeign Pipeline
instance resourcePipeline :: Resource Pipeline where type_ _ = "AWS::IoTAnalytics::Pipeline"

pipeline :: { "PipelineActivities" :: Value (Array Activity) } -> Pipeline
pipeline required = Pipeline
  (merge required
    { "PipelineName" : Nothing
    , "Tags" : Nothing
    })

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
  { "Attribute" :: Maybe (Value String)
  , "Next" :: Maybe (Value String)
  , "ThingName" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "Next" :: Maybe (Value String)
  , "Attributes" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
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
  { "DatastoreName" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "Next" :: Maybe (Value String)
  , "Attributes" :: Maybe (Value (Array String))
  , "Name" :: Maybe (Value String)
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
  { "Attribute" :: Maybe (Value String)
  , "Next" :: Maybe (Value String)
  , "Math" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "SelectAttributes" :: Maybe (Value SelectAttributes)
  , "Datastore" :: Maybe (Value Datastore)
  , "Filter" :: Maybe (Value Filter)
  , "AddAttributes" :: Maybe (Value AddAttributes)
  , "Channel" :: Maybe (Value Channel)
  , "DeviceShadowEnrich" :: Maybe (Value DeviceShadowEnrich)
  , "Math" :: Maybe (Value Math)
  , "Lambda" :: Maybe (Value Lambda)
  , "DeviceRegistryEnrich" :: Maybe (Value DeviceRegistryEnrich)
  , "RemoveAttributes" :: Maybe (Value RemoveAttributes)
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
  { "Filter" :: Maybe (Value String)
  , "Next" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "ChannelName" :: Maybe (Value String)
  , "Next" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "Next" :: Maybe (Value String)
  , "Attributes" :: Maybe (Value (Array String))
  , "Name" :: Maybe (Value String)
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
  { "BatchSize" :: Maybe (Value Int)
  , "Next" :: Maybe (Value String)
  , "LambdaName" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "Attribute" :: Maybe (Value String)
  , "Next" :: Maybe (Value String)
  , "ThingName" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

deviceShadowEnrich :: DeviceShadowEnrich
deviceShadowEnrich =
  { "Attribute" : Nothing
  , "Next" : Nothing
  , "ThingName" : Nothing
  , "RoleArn" : Nothing
  , "Name" : Nothing
  }