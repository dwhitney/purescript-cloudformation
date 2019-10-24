module AWS.SNS.TopicPolicy where 

import Foreign (Foreign)


type TopicPolicy =
  { "PolicyDocument" :: Foreign
  , "Topics" :: Array String
  }

topicPolicy :: { "PolicyDocument" :: Foreign, "Topics" :: Array String } -> TopicPolicy
topicPolicy required =
  required