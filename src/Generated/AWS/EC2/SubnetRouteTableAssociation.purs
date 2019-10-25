module CloudFormation.AWS.EC2.SubnetRouteTableAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::SubnetRouteTableAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html
-- |
-- | - `RouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-routetableid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-subnetid
newtype SubnetRouteTableAssociation = SubnetRouteTableAssociation
  { "RouteTableId" :: Value String
  , "SubnetId" :: Value String
  }

derive instance newtypeSubnetRouteTableAssociation :: Newtype SubnetRouteTableAssociation _
derive newtype instance writeSubnetRouteTableAssociation :: WriteForeign SubnetRouteTableAssociation
instance resourceSubnetRouteTableAssociation :: Resource SubnetRouteTableAssociation where type_ _ = "AWS::EC2::SubnetRouteTableAssociation"

subnetRouteTableAssociation :: { "RouteTableId" :: Value String, "SubnetId" :: Value String } -> SubnetRouteTableAssociation
subnetRouteTableAssociation required = SubnetRouteTableAssociation
  required