module CloudFormation.AWS.OpsWorks.Stack where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Record (merge)


type Stack =
  { "DefaultInstanceProfileArn" :: String
  , "Name" :: String
  , "ServiceRoleArn" :: String
  , "AgentVersion" :: Maybe String
  , "Attributes" :: Maybe (Object String)
  , "ChefConfiguration" :: Maybe ChefConfiguration
  , "CloneAppIds" :: Maybe (Array String)
  , "ClonePermissions" :: Maybe Boolean
  , "ConfigurationManager" :: Maybe StackConfigurationManager
  , "CustomCookbooksSource" :: Maybe Source
  , "CustomJson" :: Maybe Foreign
  , "DefaultAvailabilityZone" :: Maybe String
  , "DefaultOs" :: Maybe String
  , "DefaultRootDeviceType" :: Maybe String
  , "DefaultSshKeyName" :: Maybe String
  , "DefaultSubnetId" :: Maybe String
  , "EcsClusterArn" :: Maybe String
  , "ElasticIps" :: Maybe (Array ElasticIp)
  , "HostnameTheme" :: Maybe String
  , "RdsDbInstances" :: Maybe (Array RdsDbInstance)
  , "SourceStackId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "UseCustomCookbooks" :: Maybe Boolean
  , "UseOpsworksSecurityGroups" :: Maybe Boolean
  , "VpcId" :: Maybe String
  }

stack :: { "DefaultInstanceProfileArn" :: String, "Name" :: String, "ServiceRoleArn" :: String } -> Stack
stack required =
  merge required
    { "AgentVersion" : Nothing
    , "Attributes" : Nothing
    , "ChefConfiguration" : Nothing
    , "CloneAppIds" : Nothing
    , "ClonePermissions" : Nothing
    , "ConfigurationManager" : Nothing
    , "CustomCookbooksSource" : Nothing
    , "CustomJson" : Nothing
    , "DefaultAvailabilityZone" : Nothing
    , "DefaultOs" : Nothing
    , "DefaultRootDeviceType" : Nothing
    , "DefaultSshKeyName" : Nothing
    , "DefaultSubnetId" : Nothing
    , "EcsClusterArn" : Nothing
    , "ElasticIps" : Nothing
    , "HostnameTheme" : Nothing
    , "RdsDbInstances" : Nothing
    , "SourceStackId" : Nothing
    , "Tags" : Nothing
    , "UseCustomCookbooks" : Nothing
    , "UseOpsworksSecurityGroups" : Nothing
    , "VpcId" : Nothing
    }

type ElasticIp =
  { "Ip" :: String
  , "Name" :: Maybe String
  }

elasticIp :: { "Ip" :: String } -> ElasticIp
elasticIp required =
  merge required
    { "Name" : Nothing
    }

type ChefConfiguration =
  { "BerkshelfVersion" :: Maybe String
  , "ManageBerkshelf" :: Maybe Boolean
  }

chefConfiguration :: ChefConfiguration
chefConfiguration =
  { "BerkshelfVersion" : Nothing
  , "ManageBerkshelf" : Nothing
  }

type Source =
  { "Password" :: Maybe String
  , "Revision" :: Maybe String
  , "SshKey" :: Maybe String
  , "Type" :: Maybe String
  , "Url" :: Maybe String
  , "Username" :: Maybe String
  }

source :: Source
source =
  { "Password" : Nothing
  , "Revision" : Nothing
  , "SshKey" : Nothing
  , "Type" : Nothing
  , "Url" : Nothing
  , "Username" : Nothing
  }

type RdsDbInstance =
  { "DbPassword" :: String
  , "DbUser" :: String
  , "RdsDbInstanceArn" :: String
  }

rdsDbInstance :: { "DbPassword" :: String, "DbUser" :: String, "RdsDbInstanceArn" :: String } -> RdsDbInstance
rdsDbInstance required =
  required

type StackConfigurationManager =
  { "Name" :: Maybe String
  , "Version" :: Maybe String
  }

stackConfigurationManager :: StackConfigurationManager
stackConfigurationManager =
  { "Name" : Nothing
  , "Version" : Nothing
  }