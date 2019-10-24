module CloudFormation.AWS.EC2.TransitGatewayRouteTableAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::TransitGatewayRouteTableAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayattachmentid
newtype TransitGatewayRouteTableAssociation = TransitGatewayRouteTableAssociation
  { "TransitGatewayRouteTableId" :: String
  , "TransitGatewayAttachmentId" :: String
  }

derive instance newtypeTransitGatewayRouteTableAssociation :: Newtype TransitGatewayRouteTableAssociation _
instance resourceTransitGatewayRouteTableAssociation :: Resource TransitGatewayRouteTableAssociation where type_ _ = "AWS::EC2::TransitGatewayRouteTableAssociation"

transitGatewayRouteTableAssociation :: { "TransitGatewayRouteTableId" :: String, "TransitGatewayAttachmentId" :: String } -> TransitGatewayRouteTableAssociation
transitGatewayRouteTableAssociation required = TransitGatewayRouteTableAssociation
  required