module AWS.EC2.TransitGatewayRouteTable where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type TransitGatewayRouteTable =
  { "TransitGatewayId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

transitGatewayRouteTable :: { "TransitGatewayId" :: String } -> TransitGatewayRouteTable
transitGatewayRouteTable required =
  merge required
    { "Tags" : Nothing
    }