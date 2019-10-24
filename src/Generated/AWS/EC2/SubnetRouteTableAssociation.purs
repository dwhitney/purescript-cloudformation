module CloudFormation.AWS.EC2.SubnetRouteTableAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::SubnetRouteTableAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html
-- |
-- | - `RouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-routetableid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-subnetid
newtype SubnetRouteTableAssociation = SubnetRouteTableAssociation
  { "RouteTableId" :: String
  , "SubnetId" :: String
  }

derive instance newtypeSubnetRouteTableAssociation :: Newtype SubnetRouteTableAssociation _
instance resourceSubnetRouteTableAssociation :: Resource SubnetRouteTableAssociation where type_ _ = "AWS::EC2::SubnetRouteTableAssociation"

subnetRouteTableAssociation :: { "RouteTableId" :: String, "SubnetId" :: String } -> SubnetRouteTableAssociation
subnetRouteTableAssociation required = SubnetRouteTableAssociation
  required