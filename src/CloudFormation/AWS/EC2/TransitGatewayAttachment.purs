module CloudFormation.AWS.EC2.TransitGatewayAttachment where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::TransitGatewayAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html-- |
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-transitgatewayid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-vpcid
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-tags
type TransitGatewayAttachment =
  { "TransitGatewayId" :: String
  , "VpcId" :: String
  , "SubnetIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  }

transitGatewayAttachment :: { "TransitGatewayId" :: String, "VpcId" :: String, "SubnetIds" :: Array String } -> TransitGatewayAttachment
transitGatewayAttachment required =
  merge required
    { "Tags" : Nothing
    }