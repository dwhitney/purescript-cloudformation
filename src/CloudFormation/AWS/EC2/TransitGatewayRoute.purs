module CloudFormation.AWS.EC2.TransitGatewayRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)


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