module CloudFormation.AWS.EC2.TransitGatewayRouteTable where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::TransitGatewayRouteTable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html
-- |
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-transitgatewayid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-tags
newtype TransitGatewayRouteTable = TransitGatewayRouteTable
  { "TransitGatewayId" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTransitGatewayRouteTable :: Newtype TransitGatewayRouteTable _
derive newtype instance writeTransitGatewayRouteTable :: WriteForeign TransitGatewayRouteTable
instance resourceTransitGatewayRouteTable :: Resource TransitGatewayRouteTable where type_ _ = "AWS::EC2::TransitGatewayRouteTable"

transitGatewayRouteTable :: { "TransitGatewayId" :: Value String } -> TransitGatewayRouteTable
transitGatewayRouteTable required = TransitGatewayRouteTable
  (merge required
    { "Tags" : Nothing
    })