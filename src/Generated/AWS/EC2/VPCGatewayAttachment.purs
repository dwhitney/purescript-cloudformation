module CloudFormation.AWS.EC2.VPCGatewayAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCGatewayAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html
-- |
-- | - `InternetGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-internetgatewayid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpcid
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpngatewayid
newtype VPCGatewayAttachment = VPCGatewayAttachment
  { "VpcId" :: String
  , "InternetGatewayId" :: Maybe String
  , "VpnGatewayId" :: Maybe String
  }

derive instance newtypeVPCGatewayAttachment :: Newtype VPCGatewayAttachment _
instance resourceVPCGatewayAttachment :: Resource VPCGatewayAttachment where type_ _ = "AWS::EC2::VPCGatewayAttachment"

vpcgPCGatewayAttachment :: { "VpcId" :: String } -> VPCGatewayAttachment
vpcgPCGatewayAttachment required = VPCGatewayAttachment
  (merge required
    { "InternetGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    })