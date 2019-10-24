module CloudFormation.AWS.EC2.TransitGatewayRouteTablePropagation where 




-- | `AWS::EC2::TransitGatewayRouteTablePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayattachmentid
type TransitGatewayRouteTablePropagation =
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

transitGatewayRouteTablePropagation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTablePropagation
transitGatewayRouteTablePropagation required =
  required