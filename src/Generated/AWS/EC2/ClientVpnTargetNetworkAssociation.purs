module CloudFormation.AWS.EC2.ClientVpnTargetNetworkAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::ClientVpnTargetNetworkAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html
-- |
-- | - `ClientVpnEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-clientvpnendpointid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-subnetid
newtype ClientVpnTargetNetworkAssociation = ClientVpnTargetNetworkAssociation
  { "ClientVpnEndpointId" :: String
  , "SubnetId" :: String
  }

derive instance newtypeClientVpnTargetNetworkAssociation :: Newtype ClientVpnTargetNetworkAssociation _
instance resourceClientVpnTargetNetworkAssociation :: Resource ClientVpnTargetNetworkAssociation where type_ _ = "AWS::EC2::ClientVpnTargetNetworkAssociation"

clientVpnTargetNetworkAssociation :: { "ClientVpnEndpointId" :: String, "SubnetId" :: String } -> ClientVpnTargetNetworkAssociation
clientVpnTargetNetworkAssociation required = ClientVpnTargetNetworkAssociation
  required