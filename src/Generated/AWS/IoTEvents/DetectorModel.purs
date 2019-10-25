module CloudFormation.AWS.IoTEvents.DetectorModel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoTEvents::DetectorModel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html
-- |
-- | - `DetectorModelDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodeldefinition
-- | - `DetectorModelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodelname
-- | - `DetectorModelDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-detectormodeldescription
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-key
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-detectormodel.html#cfn-iotevents-detectormodel-tags
newtype DetectorModel = DetectorModel
  { "DetectorModelDefinition" :: Maybe (Value DetectorModelDefinition)
  , "DetectorModelName" :: Maybe (Value String)
  , "DetectorModelDescription" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDetectorModel :: Newtype DetectorModel _
derive newtype instance writeDetectorModel :: WriteForeign DetectorModel
instance resourceDetectorModel :: Resource DetectorModel where type_ _ = "AWS::IoTEvents::DetectorModel"

detectorModel :: DetectorModel
detectorModel = DetectorModel
  { "DetectorModelDefinition" : Nothing
  , "DetectorModelName" : Nothing
  , "DetectorModelDescription" : Nothing
  , "Key" : Nothing
  , "RoleArn" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Lambda`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html
-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html#cfn-iotevents-detectormodel-lambda-functionarn
type Lambda =
  { "FunctionArn" :: Maybe (Value String)
  }

lambda :: Lambda
lambda =
  { "FunctionArn" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html
-- |
-- | - `IotEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iotevents
-- | - `ResetTimer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-resettimer
-- | - `Sqs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sqs
-- | - `Firehose`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-firehose
-- | - `Sns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-sns
-- | - `IotTopicPublish`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-iottopicpublish
-- | - `SetTimer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-settimer
-- | - `ClearTimer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-cleartimer
-- | - `Lambda`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-lambda
-- | - `SetVariable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-action.html#cfn-iotevents-detectormodel-action-setvariable
type Action =
  { "IotEvents" :: Maybe (Value IotEvents)
  , "ResetTimer" :: Maybe (Value ResetTimer)
  , "Sqs" :: Maybe (Value Sqs)
  , "Firehose" :: Maybe (Value Firehose)
  , "Sns" :: Maybe (Value Sns)
  , "IotTopicPublish" :: Maybe (Value IotTopicPublish)
  , "SetTimer" :: Maybe (Value SetTimer)
  , "ClearTimer" :: Maybe (Value ClearTimer)
  , "Lambda" :: Maybe (Value Lambda)
  , "SetVariable" :: Maybe (Value SetVariable)
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

-- | `AWS::IoTEvents::DetectorModel.IotTopicPublish`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html
-- |
-- | - `MqttTopic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html#cfn-iotevents-detectormodel-iottopicpublish-mqtttopic
type IotTopicPublish =
  { "MqttTopic" :: Maybe (Value String)
  }

iotTopicPublish :: IotTopicPublish
iotTopicPublish =
  { "MqttTopic" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.DetectorModelDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html
-- |
-- | - `States`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-states
-- | - `InitialStateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-initialstatename
type DetectorModelDefinition =
  { "States" :: Maybe (Value (Array State))
  , "InitialStateName" :: Maybe (Value String)
  }

detectorModelDefinition :: DetectorModelDefinition
detectorModelDefinition =
  { "States" : Nothing
  , "InitialStateName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Sqs`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html
-- |
-- | - `UseBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-usebase64
-- | - `QueueUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-queueurl
type Sqs =
  { "UseBase64" :: Maybe (Value Boolean)
  , "QueueUrl" :: Maybe (Value String)
  }

sqs :: Sqs
sqs =
  { "UseBase64" : Nothing
  , "QueueUrl" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.OnExit`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html
-- |
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html#cfn-iotevents-detectormodel-onexit-events
type OnExit =
  { "Events" :: Maybe (Value (Array Event))
  }

onExit :: OnExit
onExit =
  { "Events" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Sns`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html
-- |
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html#cfn-iotevents-detectormodel-sns-targetarn
type Sns =
  { "TargetArn" :: Maybe (Value String)
  }

sns :: Sns
sns =
  { "TargetArn" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Event`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html
-- |
-- | - `Condition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-condition
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-actions
-- | - `EventName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-eventname
type Event =
  { "Condition" :: Maybe (Value String)
  , "Actions" :: Maybe (Value (Array Action))
  , "EventName" :: Maybe (Value String)
  }

event :: Event
event =
  { "Condition" : Nothing
  , "Actions" : Nothing
  , "EventName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.State`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html
-- |
-- | - `OnInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-oninput
-- | - `OnExit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onexit
-- | - `StateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-statename
-- | - `OnEnter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onenter
type State =
  { "OnInput" :: Maybe (Value OnInput)
  , "OnExit" :: Maybe (Value OnExit)
  , "StateName" :: Maybe (Value String)
  , "OnEnter" :: Maybe (Value OnEnter)
  }

state :: State
state =
  { "OnInput" : Nothing
  , "OnExit" : Nothing
  , "StateName" : Nothing
  , "OnEnter" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.OnEnter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html
-- |
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html#cfn-iotevents-detectormodel-onenter-events
type OnEnter =
  { "Events" :: Maybe (Value (Array Event))
  }

onEnter :: OnEnter
onEnter =
  { "Events" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.ClearTimer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html
-- |
-- | - `TimerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html#cfn-iotevents-detectormodel-cleartimer-timername
type ClearTimer =
  { "TimerName" :: Maybe (Value String)
  }

clearTimer :: ClearTimer
clearTimer =
  { "TimerName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.Firehose`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html
-- |
-- | - `DeliveryStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-deliverystreamname
-- | - `Separator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-separator
type Firehose =
  { "DeliveryStreamName" :: Maybe (Value String)
  , "Separator" :: Maybe (Value String)
  }

firehose :: Firehose
firehose =
  { "DeliveryStreamName" : Nothing
  , "Separator" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.SetVariable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html
-- |
-- | - `VariableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html#cfn-iotevents-detectormodel-setvariable-variablename
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html#cfn-iotevents-detectormodel-setvariable-value
type SetVariable =
  { "VariableName" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  }

setVariable :: SetVariable
setVariable =
  { "VariableName" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.OnInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html
-- |
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-events
-- | - `TransitionEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-transitionevents
type OnInput =
  { "Events" :: Maybe (Value (Array Event))
  , "TransitionEvents" :: Maybe (Value (Array TransitionEvent))
  }

onInput :: OnInput
onInput =
  { "Events" : Nothing
  , "TransitionEvents" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.TransitionEvent`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html
-- |
-- | - `Condition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-condition
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-actions
-- | - `NextState`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-nextstate
-- | - `EventName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-eventname
type TransitionEvent =
  { "Condition" :: Maybe (Value String)
  , "Actions" :: Maybe (Value (Array Action))
  , "NextState" :: Maybe (Value String)
  , "EventName" :: Maybe (Value String)
  }

transitionEvent :: TransitionEvent
transitionEvent =
  { "Condition" : Nothing
  , "Actions" : Nothing
  , "NextState" : Nothing
  , "EventName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.IotEvents`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html
-- |
-- | - `InputName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html#cfn-iotevents-detectormodel-iotevents-inputname
type IotEvents =
  { "InputName" :: Maybe (Value String)
  }

iotEvents :: IotEvents
iotEvents =
  { "InputName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.ResetTimer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html
-- |
-- | - `TimerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html#cfn-iotevents-detectormodel-resettimer-timername
type ResetTimer =
  { "TimerName" :: Maybe (Value String)
  }

resetTimer :: ResetTimer
resetTimer =
  { "TimerName" : Nothing
  }

-- | `AWS::IoTEvents::DetectorModel.SetTimer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html
-- |
-- | - `Seconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-seconds
-- | - `TimerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-timername
type SetTimer =
  { "Seconds" :: Maybe (Value Int)
  , "TimerName" :: Maybe (Value String)
  }

setTimer :: SetTimer
setTimer =
  { "Seconds" : Nothing
  , "TimerName" : Nothing
  }