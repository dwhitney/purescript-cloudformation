module CloudFormation.AWS.EC2.TransitGatewayRouteTableAssociation where 




type TransitGatewayRouteTableAssociation =
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

transitGatewayRouteTableAssociation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTableAssociation
transitGatewayRouteTableAssociation required =
  required