module CloudFormation.AWS.EC2.TransitGatewayRouteTablePropagation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::TransitGatewayRouteTablePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayroutetableid
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayattachmentid
newtype TransitGatewayRouteTablePropagation = TransitGatewayRouteTablePropagation
  { "TransitGatewayRouteTableId" :: Value String
  , "TransitGatewayAttachmentId" :: Value String
  }

derive instance newtypeTransitGatewayRouteTablePropagation :: Newtype TransitGatewayRouteTablePropagation _
derive newtype instance writeTransitGatewayRouteTablePropagation :: WriteForeign TransitGatewayRouteTablePropagation
instance resourceTransitGatewayRouteTablePropagation :: Resource TransitGatewayRouteTablePropagation where type_ _ = "AWS::EC2::TransitGatewayRouteTablePropagation"

transitGatewayRouteTablePropagation :: { "TransitGatewayRouteTableId" :: Value String, "TransitGatewayAttachmentId" :: Value String } -> TransitGatewayRouteTablePropagation
transitGatewayRouteTablePropagation required = TransitGatewayRouteTablePropagation
  required