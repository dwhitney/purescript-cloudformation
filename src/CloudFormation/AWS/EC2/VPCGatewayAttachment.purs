module CloudFormation.AWS.EC2.VPCGatewayAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::VPCGatewayAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html-- |
-- | - `InternetGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-internetgatewayid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpcid
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpngatewayid
type VPCGatewayAttachment =
  { "VpcId" :: String
  , "InternetGatewayId" :: Maybe String
  , "VpnGatewayId" :: Maybe String
  }

vpcgPCGatewayAttachment :: { "VpcId" :: String } -> VPCGatewayAttachment
vpcgPCGatewayAttachment required =
  merge required
    { "InternetGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    }