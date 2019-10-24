module CloudFormation.AWS.IoTEvents.DetectorModel where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


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

-- | `AWS::IoTEvents::DetectorModel.Lambda`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html
-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html#cfn-iotevents-detectormodel-lambda-functionarn
type Lambda =
  { "FunctionArn" :: Maybe String
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

-- | `AWS::IoTEvents::DetectorModel.IotTopicPublish`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html
-- |
-- | - `MqttTopic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iottopicpublish.html#cfn-iotevents-detectormodel-iottopicpublish-mqtttopic
type IotTopicPublish =
  { "MqttTopic" :: Maybe String
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
  { "States" :: Maybe (Array State)
  , "InitialStateName" :: Maybe String
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
  { "UseBase64" :: Maybe Boolean
  , "QueueUrl" :: Maybe String
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
  { "Events" :: Maybe (Array Event)
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
  { "TargetArn" :: Maybe String
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

-- | `AWS::IoTEvents::DetectorModel.OnEnter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html
-- |
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html#cfn-iotevents-detectormodel-onenter-events
type OnEnter =
  { "Events" :: Maybe (Array Event)
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
  { "TimerName" :: Maybe String
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
  { "DeliveryStreamName" :: Maybe String
  , "Separator" :: Maybe String
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
  { "VariableName" :: Maybe String
  , "Value" :: Maybe String
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
  { "Events" :: Maybe (Array Event)
  , "TransitionEvents" :: Maybe (Array TransitionEvent)
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

-- | `AWS::IoTEvents::DetectorModel.IotEvents`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html
-- |
-- | - `InputName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html#cfn-iotevents-detectormodel-iotevents-inputname
type IotEvents =
  { "InputName" :: Maybe String
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
  { "TimerName" :: Maybe String
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
  { "Seconds" :: Maybe Int
  , "TimerName" :: Maybe String
  }

setTimer :: SetTimer
setTimer =
  { "Seconds" : Nothing
  , "TimerName" : Nothing
  }