module CloudFormation.AWS.EC2.TransitGatewayRouteTableAssociation where 




-- | `AWS::EC2::TransitGatewayRouteTableAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayattachmentid
type TransitGatewayRouteTableAssociation =
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

transitGatewayRouteTableAssociation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTableAssociation
transitGatewayRouteTableAssociation required =
  required