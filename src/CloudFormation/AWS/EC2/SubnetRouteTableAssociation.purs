module CloudFormation.AWS.EC2.SubnetRouteTableAssociation where 




-- | `AWS::EC2::SubnetRouteTableAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html-- |
-- | - `RouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-routetableid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-subnetid
type SubnetRouteTableAssociation =
  { "RouteTableId" :: String
  , "SubnetId" :: String
  }

subnetRouteTableAssociation :: { "RouteTableId" :: String, "SubnetId" :: String } -> SubnetRouteTableAssociation
subnetRouteTableAssociation required =
  required