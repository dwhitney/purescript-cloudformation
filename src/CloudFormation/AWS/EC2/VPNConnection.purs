module CloudFormation.AWS.EC2.VPNConnection where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type VPNConnection =
  { "CustomerGatewayId" :: String
  , "Type" :: String
  , "StaticRoutesOnly" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "TransitGatewayId" :: Maybe String
  , "VpnGatewayId" :: Maybe String
  , "VpnTunnelOptionsSpecifications" :: Maybe (Array VpnTunnelOptionsSpecification)
  }

vpncPNConnection :: { "CustomerGatewayId" :: String, "Type" :: String } -> VPNConnection
vpncPNConnection required =
  merge required
    { "StaticRoutesOnly" : Nothing
    , "Tags" : Nothing
    , "TransitGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    , "VpnTunnelOptionsSpecifications" : Nothing
    }

type VpnTunnelOptionsSpecification =
  { "PreSharedKey" :: Maybe String
  , "TunnelInsideCidr" :: Maybe String
  }

vpnTunnelOptionsSpecification :: VpnTunnelOptionsSpecification
vpnTunnelOptionsSpecification =
  { "PreSharedKey" : Nothing
  , "TunnelInsideCidr" : Nothing
  }