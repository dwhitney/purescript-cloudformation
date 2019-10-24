module CloudFormation.AWS.EC2.TransitGatewayRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype TransitGatewayRoute = TransitGatewayRoute
  { "TransitGatewayRouteTableId" :: String
  , "DestinationCidrBlock" :: Maybe String
  , "Blackhole" :: Maybe Boolean
  , "TransitGatewayAttachmentId" :: Maybe String
  }

derive instance newtypeTransitGatewayRoute :: Newtype TransitGatewayRoute _
instance resourceTransitGatewayRoute :: Resource TransitGatewayRoute where type_ _ = "AWS::EC2::TransitGatewayRoute"

transitGatewayRoute :: { "TransitGatewayRouteTableId" :: String } -> TransitGatewayRoute
transitGatewayRoute required = TransitGatewayRoute
  (merge required
    { "DestinationCidrBlock" : Nothing
    , "Blackhole" : Nothing
    , "TransitGatewayAttachmentId" : Nothing
    })