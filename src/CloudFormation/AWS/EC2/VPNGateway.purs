module CloudFormation.AWS.EC2.VPNGateway where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type VPNGateway =
  { "Type" :: String
  , "AmazonSideAsn" :: Maybe Number
  , "Tags" :: Maybe (Array Tag)
  }

vpngPNGateway :: { "Type" :: String } -> VPNGateway
vpngPNGateway required =
  merge required
    { "AmazonSideAsn" : Nothing
    , "Tags" : Nothing
    }