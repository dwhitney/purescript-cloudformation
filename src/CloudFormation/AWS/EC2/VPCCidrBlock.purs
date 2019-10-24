module CloudFormation.AWS.EC2.VPCCidrBlock where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VPCCidrBlock =
  { "VpcId" :: String
  , "AmazonProvidedIpv6CidrBlock" :: Maybe Boolean
  , "CidrBlock" :: Maybe String
  }

vpccPCCidrBlock :: { "VpcId" :: String } -> VPCCidrBlock
vpccPCCidrBlock required =
  merge required
    { "AmazonProvidedIpv6CidrBlock" : Nothing
    , "CidrBlock" : Nothing
    }