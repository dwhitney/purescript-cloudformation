module CloudFormation.AWS.EC2.VPNConnectionRoute where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPNConnectionRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html
-- |
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-cidrblock
-- | - `VpnConnectionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-connectionid
newtype VPNConnectionRoute = VPNConnectionRoute
  { "DestinationCidrBlock" :: Value String
  , "VpnConnectionId" :: Value String
  }

derive instance newtypeVPNConnectionRoute :: Newtype VPNConnectionRoute _
derive newtype instance writeVPNConnectionRoute :: WriteForeign VPNConnectionRoute
instance resourceVPNConnectionRoute :: Resource VPNConnectionRoute where type_ _ = "AWS::EC2::VPNConnectionRoute"

vpncPNConnectionRoute :: { "DestinationCidrBlock" :: Value String, "VpnConnectionId" :: Value String } -> VPNConnectionRoute
vpncPNConnectionRoute required = VPNConnectionRoute
  required