module AWS.EC2.TransitGatewayAttachment where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type TransitGatewayAttachment =
  { "TransitGatewayId" :: String
  , "VpcId" :: String
  , "SubnetIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  }

transitGatewayAttachment :: { "TransitGatewayId" :: String, "VpcId" :: String, "SubnetIds" :: Array String } -> TransitGatewayAttachment
transitGatewayAttachment required =
  merge required
    { "Tags" : Nothing
    }