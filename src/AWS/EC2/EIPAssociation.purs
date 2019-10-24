module AWS.EC2.EIPAssociation where 

import Data.Maybe (Maybe(..))


type EIPAssociation =
  { "AllocationId" :: Maybe String
  , "EIP" :: Maybe String
  , "InstanceId" :: Maybe String
  , "NetworkInterfaceId" :: Maybe String
  , "PrivateIpAddress" :: Maybe String
  }

eipaIPAssociation :: EIPAssociation
eipaIPAssociation =
  { "AllocationId" : Nothing
  , "EIP" : Nothing
  , "InstanceId" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "PrivateIpAddress" : Nothing
  }