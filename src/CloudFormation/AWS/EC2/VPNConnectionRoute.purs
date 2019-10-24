module CloudFormation.AWS.EC2.VPNConnectionRoute where 




-- | `AWS::EC2::VPNConnectionRoute`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html-- |
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-cidrblock
-- | - `VpnConnectionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-connectionid
type VPNConnectionRoute =
  { "DestinationCidrBlock" :: String
  , "VpnConnectionId" :: String
  }

vpncPNConnectionRoute :: { "DestinationCidrBlock" :: String, "VpnConnectionId" :: String } -> VPNConnectionRoute
vpncPNConnectionRoute required =
  required