module AWS.SNS.Subscription where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type Subscription =
  { "Protocol" :: String
  , "TopicArn" :: String
  , "DeliveryPolicy" :: Maybe Foreign
  , "Endpoint" :: Maybe String
  , "FilterPolicy" :: Maybe Foreign
  , "RawMessageDelivery" :: Maybe Boolean
  , "Region" :: Maybe String
  }

subscription :: { "Protocol" :: String, "TopicArn" :: String } -> Subscription
subscription required =
  merge required
    { "DeliveryPolicy" : Nothing
    , "Endpoint" : Nothing
    , "FilterPolicy" : Nothing
    , "RawMessageDelivery" : Nothing
    , "Region" : Nothing
    }