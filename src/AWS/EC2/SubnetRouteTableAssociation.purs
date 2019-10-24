module AWS.EC2.SubnetRouteTableAssociation where 




type SubnetRouteTableAssociation =
  { "RouteTableId" :: String
  , "SubnetId" :: String
  }

subnetRouteTableAssociation :: { "RouteTableId" :: String, "SubnetId" :: String } -> SubnetRouteTableAssociation
subnetRouteTableAssociation required =
  required