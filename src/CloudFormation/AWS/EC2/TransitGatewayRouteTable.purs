module CloudFormation.AWS.EC2.TransitGatewayRouteTable where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::TransitGatewayRouteTable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html
-- |
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-transitgatewayid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-tags
type TransitGatewayRouteTable =
  { "TransitGatewayId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

transitGatewayRouteTable :: { "TransitGatewayId" :: String } -> TransitGatewayRouteTable
transitGatewayRouteTable required =
  merge required
    { "Tags" : Nothing
    }