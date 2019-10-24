module AWS.AppStream.Fleet where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Fleet =
  { "ComputeCapacity" :: ComputeCapacity
  , "InstanceType" :: String
  , "Description" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "FleetType" :: Maybe String
  , "EnableDefaultInternetAccess" :: Maybe Boolean
  , "DomainJoinInfo" :: Maybe DomainJoinInfo
  , "Name" :: Maybe String
  , "ImageName" :: Maybe String
  , "MaxUserDurationInSeconds" :: Maybe Int
  , "IdleDisconnectTimeoutInSeconds" :: Maybe Int
  , "DisconnectTimeoutInSeconds" :: Maybe Int
  , "DisplayName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "ImageArn" :: Maybe String
  }

fleet :: { "ComputeCapacity" :: ComputeCapacity, "InstanceType" :: String } -> Fleet
fleet required =
  merge required
    { "Description" : Nothing
    , "VpcConfig" : Nothing
    , "FleetType" : Nothing
    , "EnableDefaultInternetAccess" : Nothing
    , "DomainJoinInfo" : Nothing
    , "Name" : Nothing
    , "ImageName" : Nothing
    , "MaxUserDurationInSeconds" : Nothing
    , "IdleDisconnectTimeoutInSeconds" : Nothing
    , "DisconnectTimeoutInSeconds" : Nothing
    , "DisplayName" : Nothing
    , "Tags" : Nothing
    , "ImageArn" : Nothing
    }

type VpcConfig =
  { "SubnetIds" :: Maybe (Array String)
  , "SecurityGroupIds" :: Maybe (Array String)
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "SubnetIds" : Nothing
  , "SecurityGroupIds" : Nothing
  }

type ComputeCapacity =
  { "DesiredInstances" :: Int
  }

computeCapacity :: { "DesiredInstances" :: Int } -> ComputeCapacity
computeCapacity required =
  required

type DomainJoinInfo =
  { "OrganizationalUnitDistinguishedName" :: Maybe String
  , "DirectoryName" :: Maybe String
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }