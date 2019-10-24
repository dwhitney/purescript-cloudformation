module AWS.IAM.ServiceLinkedRole where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ServiceLinkedRole =
  { "AWSServiceName" :: String
  , "CustomSuffix" :: Maybe String
  , "Description" :: Maybe String
  }

serviceLinkedRole :: { "AWSServiceName" :: String } -> ServiceLinkedRole
serviceLinkedRole required =
  merge required
    { "CustomSuffix" : Nothing
    , "Description" : Nothing
    }