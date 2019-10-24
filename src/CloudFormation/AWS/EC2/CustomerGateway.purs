module CloudFormation.AWS.EC2.CustomerGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type CustomerGateway =
  { "BgpAsn" :: Int
  , "IpAddress" :: String
  , "Type" :: String
  , "Tags" :: Maybe (Array Tag)
  }

customerGateway :: { "BgpAsn" :: Int, "IpAddress" :: String, "Type" :: String } -> CustomerGateway
customerGateway required =
  merge required
    { "Tags" : Nothing
    }