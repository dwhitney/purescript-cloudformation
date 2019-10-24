module CloudFormation.AWS.SQS.QueuePolicy where 

import Foreign (Foreign)


type QueuePolicy =
  { "PolicyDocument" :: Foreign
  , "Queues" :: Array String
  }

queuePolicy :: { "PolicyDocument" :: Foreign, "Queues" :: Array String } -> QueuePolicy
queuePolicy required =
  required