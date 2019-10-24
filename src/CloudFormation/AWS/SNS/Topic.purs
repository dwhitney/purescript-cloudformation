module CloudFormation.AWS.SNS.Topic where 

import Data.Maybe (Maybe(..))


type Topic =
  { "DisplayName" :: Maybe String
  , "KmsMasterKeyId" :: Maybe String
  , "Subscription" :: Maybe (Array Subscription)
  , "TopicName" :: Maybe String
  }

topic :: Topic
topic =
  { "DisplayName" : Nothing
  , "KmsMasterKeyId" : Nothing
  , "Subscription" : Nothing
  , "TopicName" : Nothing
  }

type Subscription =
  { "Endpoint" :: String
  , "Protocol" :: String
  }

subscription :: { "Endpoint" :: String, "Protocol" :: String } -> Subscription
subscription required =
  required