module CloudFormation.AWS.EC2.VPCGatewayAttachment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "VpcId" :: Value String
  , "InternetGatewayId" :: Maybe (Value String)
  , "VpnGatewayId" :: Maybe (Value String)
  }

derive instance newtypeVPCGatewayAttachment :: Newtype VPCGatewayAttachment _
derive newtype instance writeVPCGatewayAttachment :: WriteForeign VPCGatewayAttachment
instance resourceVPCGatewayAttachment :: Resource VPCGatewayAttachment where type_ _ = "AWS::EC2::VPCGatewayAttachment"

vpcgPCGatewayAttachment :: { "VpcId" :: Value String } -> VPCGatewayAttachment
vpcgPCGatewayAttachment required = VPCGatewayAttachment
  (merge required
    { "InternetGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    })