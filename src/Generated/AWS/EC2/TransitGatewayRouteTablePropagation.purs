module CloudFormation.AWS.EC2.TransitGatewayRouteTablePropagation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::TransitGatewayRouteTablePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayattachmentid
newtype TransitGatewayRouteTablePropagation = TransitGatewayRouteTablePropagation
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

derive instance newtypeTransitGatewayRouteTablePropagation :: Newtype TransitGatewayRouteTablePropagation _
instance resourceTransitGatewayRouteTablePropagation :: Resource TransitGatewayRouteTablePropagation where type_ _ = "AWS::EC2::TransitGatewayRouteTablePropagation"

transitGatewayRouteTablePropagation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTablePropagation
transitGatewayRouteTablePropagation required = TransitGatewayRouteTablePropagation
  required