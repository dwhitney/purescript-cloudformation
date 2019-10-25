module CloudFormation.AWS.EC2.ClientVpnTargetNetworkAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::ClientVpnTargetNetworkAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html
-- |
-- | - `ClientVpnEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-clientvpnendpointid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-subnetid
newtype ClientVpnTargetNetworkAssociation = ClientVpnTargetNetworkAssociation
  { "ClientVpnEndpointId" :: Value String
  , "SubnetId" :: Value String
  }

derive instance newtypeClientVpnTargetNetworkAssociation :: Newtype ClientVpnTargetNetworkAssociation _
derive newtype instance writeClientVpnTargetNetworkAssociation :: WriteForeign ClientVpnTargetNetworkAssociation
instance resourceClientVpnTargetNetworkAssociation :: Resource ClientVpnTargetNetworkAssociation where type_ _ = "AWS::EC2::ClientVpnTargetNetworkAssociation"

clientVpnTargetNetworkAssociation :: { "ClientVpnEndpointId" :: Value String, "SubnetId" :: Value String } -> ClientVpnTargetNetworkAssociation
clientVpnTargetNetworkAssociation required = ClientVpnTargetNetworkAssociation
  required