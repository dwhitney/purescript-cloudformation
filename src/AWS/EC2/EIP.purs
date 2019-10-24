module AWS.EC2.EIP where 

import Data.Maybe (Maybe(..))


type EIP =
  { "Domain" :: Maybe String
  , "InstanceId" :: Maybe String
  , "PublicIpv4Pool" :: Maybe String
  }

eipIP :: EIP
eipIP =
  { "Domain" : Nothing
  , "InstanceId" : Nothing
  , "PublicIpv4Pool" : Nothing
  }