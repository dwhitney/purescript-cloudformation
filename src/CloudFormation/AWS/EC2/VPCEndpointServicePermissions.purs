module CloudFormation.AWS.EC2.VPCEndpointServicePermissions where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VPCEndpointServicePermissions =
  { "ServiceId" :: String
  , "AllowedPrincipals" :: Maybe (Array String)
  }

vpcePCEndpointServicePermissions :: { "ServiceId" :: String } -> VPCEndpointServicePermissions
vpcePCEndpointServicePermissions required =
  merge required
    { "AllowedPrincipals" : Nothing
    }