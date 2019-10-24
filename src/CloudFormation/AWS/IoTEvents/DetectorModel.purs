module CloudFormation.AWS.IoTEvents.DetectorModel where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


type DetectorModel =
  { "DetectorModelDefinition" :: Maybe DetectorModelDefinition
  , "DetectorModelName" :: Maybe String
  , "DetectorModelDescription" :: Maybe String
  , "Key" :: Maybe String
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

detectorModel :: DetectorModel
detectorModel =
  { "DetectorModelDefinition" : Nothing
  , "DetectorModelName" : Nothing
  , "DetectorModelDescription" : Nothing
  , "Key" : Nothing
  , "RoleArn" : Nothing
  , "Tags" : Nothing
  }

type Lambda =
  { "FunctionArn" :: Maybe String
  }

lambda :: Lambda
lambda =
  { "FunctionArn" : Nothing
  }

type Action =
  { "IotEvents" :: Maybe IotEvents
  , "ResetTimer" :: Maybe ResetTimer
  , "Sqs" :: Maybe Sqs
  , "Firehose" :: Maybe Firehose
  , "Sns" :: Maybe Sns
  , "IotTopicPublish" :: Maybe IotTopicPublish
  , "SetTimer" :: Maybe SetTimer
  , "ClearTimer" :: Maybe ClearTimer
  , "Lambda" :: Maybe Lambda
  , "SetVariable" :: Maybe SetVariable
  }

action :: Action
action =
  { "IotEvents" : Nothing
  , "ResetTimer" : Nothing
  , "Sqs" : Nothing
  , "Firehose" : Nothing
  , "Sns" : Nothing
  , "IotTopicPublish" : Nothing
  , "SetTimer" : Nothing
  , "ClearTimer" : Nothing
  , "Lambda" : Nothing
  , "SetVariable" : Nothing
  }

type IotTopicPublish =
  { "MqttTopic" :: Maybe String
  }

iotTopicPublish :: IotTopicPublish
iotTopicPublish =
  { "MqttTopic" : Nothing
  }

type DetectorModelDefinition =
  { "States" :: Maybe (Array State)
  , "InitialStateName" :: Maybe String
  }

detectorModelDefinition :: DetectorModelDefinition
detectorModelDefinition =
  { "States" : Nothing
  , "InitialStateName" : Nothing
  }

type Sqs =
  { "UseBase64" :: Maybe Boolean
  , "QueueUrl" :: Maybe String
  }

sqs :: Sqs
sqs =
  { "UseBase64" : Nothing
  , "QueueUrl" : Nothing
  }

type OnExit =
  { "Events" :: Maybe (Array Event)
  }

onExit :: OnExit
onExit =
  { "Events" : Nothing
  }

type Sns =
  { "TargetArn" :: Maybe String
  }

sns :: Sns
sns =
  { "TargetArn" : Nothing
  }

type Event =
  { "Condition" :: Maybe String
  , "Actions" :: Maybe (Array Action)
  , "EventName" :: Maybe String
  }

event :: Event
event =
  { "Condition" : Nothing
  , "Actions" : Nothing
  , "EventName" : Nothing
  }

type State =
  { "OnInput" :: Maybe OnInput
  , "OnExit" :: Maybe OnExit
  , "StateName" :: Maybe String
  , "OnEnter" :: Maybe OnEnter
  }

state :: State
state =
  { "OnInput" : Nothing
  , "OnExit" : Nothing
  , "StateName" : Nothing
  , "OnEnter" : Nothing
  }

type OnEnter =
  { "Events" :: Maybe (Array Event)
  }

onEnter :: OnEnter
onEnter =
  { "Events" : Nothing
  }

type ClearTimer =
  { "TimerName" :: Maybe String
  }

clearTimer :: ClearTimer
clearTimer =
  { "TimerName" : Nothing
  }

type Firehose =
  { "DeliveryStreamName" :: Maybe String
  , "Separator" :: Maybe String
  }

firehose :: Firehose
firehose =
  { "DeliveryStreamName" : Nothing
  , "Separator" : Nothing
  }

type SetVariable =
  { "VariableName" :: Maybe String
  , "Value" :: Maybe String
  }

setVariable :: SetVariable
setVariable =
  { "VariableName" : Nothing
  , "Value" : Nothing
  }

type OnInput =
  { "Events" :: Maybe (Array Event)
  , "TransitionEvents" :: Maybe (Array TransitionEvent)
  }

onInput :: OnInput
onInput =
  { "Events" : Nothing
  , "TransitionEvents" : Nothing
  }

type TransitionEvent =
  { "Condition" :: Maybe String
  , "Actions" :: Maybe (Array Action)
  , "NextState" :: Maybe String
  , "EventName" :: Maybe String
  }

transitionEvent :: TransitionEvent
transitionEvent =
  { "Condition" : Nothing
  , "Actions" : Nothing
  , "NextState" : Nothing
  , "EventName" : Nothing
  }

type IotEvents =
  { "InputName" :: Maybe String
  }

iotEvents :: IotEvents
iotEvents =
  { "InputName" : Nothing
  }

type ResetTimer =
  { "TimerName" :: Maybe String
  }

resetTimer :: ResetTimer
resetTimer =
  { "TimerName" : Nothing
  }

type SetTimer =
  { "Seconds" :: Maybe Int
  , "TimerName" :: Maybe String
  }

setTimer :: SetTimer
setTimer =
  { "Seconds" : Nothing
  , "TimerName" : Nothing
  }