module CloudFormation.AWS.EC2.TransitGatewayRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::TransitGatewayRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html
-- |
-- | - `TransitGatewayRouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-transitgatewayroutetableid
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-destinationcidrblock
-- | - `Blackhole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-blackhole
-- | - `TransitGatewayAttachmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-transitgatewayattachmentid
type TransitGatewayRoute =
  { "TransitGatewayRouteTableId" :: String
  , "DestinationCidrBlock" :: Maybe String
  , "Blackhole" :: Maybe Boolean
  , "TransitGatewayAttachmentId" :: Maybe String
  }

transitGatewayRoute :: { "TransitGatewayRouteTableId" :: String } -> TransitGatewayRoute
transitGatewayRoute required =
  merge required
    { "DestinationCidrBlock" : Nothing
    , "Blackhole" : Nothing
    , "TransitGatewayAttachmentId" : Nothing
    }