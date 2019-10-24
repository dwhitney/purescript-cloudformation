module CloudFormation.AWS.PinpointEmail.DedicatedIpPool where 

import Data.Maybe (Maybe(..))


type DedicatedIpPool =
  { "PoolName" :: Maybe String
  , "Tags" :: Maybe (Array Tags)
  }

dedicatedIpPool :: DedicatedIpPool
dedicatedIpPool =
  { "PoolName" : Nothing
  , "Tags" : Nothing
  }

type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }