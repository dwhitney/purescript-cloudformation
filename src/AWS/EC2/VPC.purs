module AWS.EC2.VPC where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type VPC =
  { "CidrBlock" :: String
  , "EnableDnsHostnames" :: Maybe Boolean
  , "EnableDnsSupport" :: Maybe Boolean
  , "InstanceTenancy" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

vpcPC :: { "CidrBlock" :: String } -> VPC
vpcPC required =
  merge required
    { "EnableDnsHostnames" : Nothing
    , "EnableDnsSupport" : Nothing
    , "InstanceTenancy" : Nothing
    , "Tags" : Nothing
    }