module CloudFormation.AWS.EC2.TransitGatewayRouteTablePropagation where 




type TransitGatewayRouteTablePropagation =
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

transitGatewayRouteTablePropagation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTablePropagation
transitGatewayRouteTablePropagation required =
  required