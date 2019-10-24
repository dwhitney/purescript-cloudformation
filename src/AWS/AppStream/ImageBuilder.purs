module AWS.AppStream.ImageBuilder where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type ImageBuilder =
  { "InstanceType" :: String
  , "ImageName" :: Maybe String
  , "Description" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "EnableDefaultInternetAccess" :: Maybe Boolean
  , "DisplayName" :: Maybe String
  , "DomainJoinInfo" :: Maybe DomainJoinInfo
  , "AppstreamAgentVersion" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  , "ImageArn" :: Maybe String
  }

imageBuilder :: { "InstanceType" :: String } -> ImageBuilder
imageBuilder required =
  merge required
    { "ImageName" : Nothing
    , "Description" : Nothing
    , "VpcConfig" : Nothing
    , "EnableDefaultInternetAccess" : Nothing
    , "DisplayName" : Nothing
    , "DomainJoinInfo" : Nothing
    , "AppstreamAgentVersion" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    , "ImageArn" : Nothing
    }

type DomainJoinInfo =
  { "OrganizationalUnitDistinguishedName" :: Maybe String
  , "DirectoryName" :: Maybe String
  }

domainJoinInfo :: DomainJoinInfo
domainJoinInfo =
  { "OrganizationalUnitDistinguishedName" : Nothing
  , "DirectoryName" : Nothing
  }

type VpcConfig =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }