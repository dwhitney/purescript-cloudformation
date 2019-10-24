module AWS.EC2.ClientVpnAuthorizationRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ClientVpnAuthorizationRule =
  { "ClientVpnEndpointId" :: String
  , "TargetNetworkCidr" :: String
  , "Description" :: Maybe String
  , "AccessGroupId" :: Maybe String
  , "AuthorizeAllGroups" :: Maybe Boolean
  }

clientVpnAuthorizationRule :: { "ClientVpnEndpointId" :: String, "TargetNetworkCidr" :: String } -> ClientVpnAuthorizationRule
clientVpnAuthorizationRule required =
  merge required
    { "Description" : Nothing
    , "AccessGroupId" : Nothing
    , "AuthorizeAllGroups" : Nothing
    }