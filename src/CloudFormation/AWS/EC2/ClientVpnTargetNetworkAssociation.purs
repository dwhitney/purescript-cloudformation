module CloudFormation.AWS.EC2.ClientVpnTargetNetworkAssociation where 




-- | `AWS::EC2::ClientVpnTargetNetworkAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html-- |
-- | - `ClientVpnEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-clientvpnendpointid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-subnetid
type ClientVpnTargetNetworkAssociation =
  { "ClientVpnEndpointId" :: String
  , "SubnetId" :: String
  }

clientVpnTargetNetworkAssociation :: { "ClientVpnEndpointId" :: String, "SubnetId" :: String } -> ClientVpnTargetNetworkAssociation
clientVpnTargetNetworkAssociation required =
  required