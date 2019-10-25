module CloudFormation.AWS.EC2.TransitGatewayRoute where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "TransitGatewayRouteTableId" :: Value String
  , "DestinationCidrBlock" :: Maybe (Value String)
  , "Blackhole" :: Maybe (Value Boolean)
  , "TransitGatewayAttachmentId" :: Maybe (Value String)
  }

derive instance newtypeTransitGatewayRoute :: Newtype TransitGatewayRoute _
derive newtype instance writeTransitGatewayRoute :: WriteForeign TransitGatewayRoute
instance resourceTransitGatewayRoute :: Resource TransitGatewayRoute where type_ _ = "AWS::EC2::TransitGatewayRoute"

transitGatewayRoute :: { "TransitGatewayRouteTableId" :: Value String } -> TransitGatewayRoute
transitGatewayRoute required = TransitGatewayRoute
  (merge required
    { "DestinationCidrBlock" : Nothing
    , "Blackhole" : Nothing
    , "TransitGatewayAttachmentId" : Nothing
    })