module CloudFormation.AWS.IoTAnalytics.Pipeline where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign (Foreign)


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

type AddAttributes =
  { "Next" :: Maybe String
  , "Attributes" :: Maybe Foreign
  , "Name" :: Maybe String
  }

addAttributes :: AddAttributes
addAttributes =
  { "Next" : Nothing
  , "Attributes" : Nothing
  , "Name" : Nothing
  }

type Datastore =
  { "DatastoreName" :: Maybe String
  , "Name" :: Maybe String
  }

datastore :: Datastore
datastore =
  { "DatastoreName" : Nothing
  , "Name" : Nothing
  }

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