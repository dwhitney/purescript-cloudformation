module CloudFormation.AWS.EC2.RouteTable where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type RouteTable =
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

routeTable :: { "VpcId" :: String } -> RouteTable
routeTable required =
  merge required
    { "Tags" : Nothing
    }