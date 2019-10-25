module CloudFormation.AWS.EC2.TransitGatewayRouteTableAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::TransitGatewayRouteTableAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayattachmentid
newtype TransitGatewayRouteTableAssociation = TransitGatewayRouteTableAssociation
  { "TransitGatewayRouteTableId" :: Value String
  , "TransitGatewayAttachmentId" :: Value String
  }

derive instance newtypeTransitGatewayRouteTableAssociation :: Newtype TransitGatewayRouteTableAssociation _
derive newtype instance writeTransitGatewayRouteTableAssociation :: WriteForeign TransitGatewayRouteTableAssociation
instance resourceTransitGatewayRouteTableAssociation :: Resource TransitGatewayRouteTableAssociation where type_ _ = "AWS::EC2::TransitGatewayRouteTableAssociation"

transitGatewayRouteTableAssociation :: { "TransitGatewayRouteTableId" :: Value String, "TransitGatewayAttachmentId" :: Value String } -> TransitGatewayRouteTableAssociation
transitGatewayRouteTableAssociation required = TransitGatewayRouteTableAssociation
  required