module CloudFormation.AWS.EC2.VPNConnectionRoute where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPNConnectionRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html
-- |
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-cidrblock
-- | - `VpnConnectionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-connectionid
newtype VPNConnectionRoute = VPNConnectionRoute
  { "DestinationCidrBlock" :: String
  , "VpnConnectionId" :: String
  }

derive instance newtypeVPNConnectionRoute :: Newtype VPNConnectionRoute _
instance resourceVPNConnectionRoute :: Resource VPNConnectionRoute where type_ _ = "AWS::EC2::VPNConnectionRoute"

vpncPNConnectionRoute :: { "DestinationCidrBlock" :: String, "VpnConnectionId" :: String } -> VPNConnectionRoute
vpncPNConnectionRoute required = VPNConnectionRoute
  required