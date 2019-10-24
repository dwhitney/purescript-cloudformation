module AWS.EC2.VPCEndpointConnectionNotification where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VPCEndpointConnectionNotification =
  { "ConnectionEvents" :: Array String
  , "ConnectionNotificationArn" :: String
  , "VPCEndpointId" :: Maybe String
  , "ServiceId" :: Maybe String
  }

vpcePCEndpointConnectionNotification :: { "ConnectionEvents" :: Array String, "ConnectionNotificationArn" :: String } -> VPCEndpointConnectionNotification
vpcePCEndpointConnectionNotification required =
  merge required
    { "VPCEndpointId" : Nothing
    , "ServiceId" : Nothing
    }