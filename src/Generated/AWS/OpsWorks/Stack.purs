module CloudFormation.AWS.OpsWorks.Stack where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation (Json)
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::OpsWorks::Stack`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html
-- |
-- | - `AgentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-agentversion
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-attributes
-- | - `ChefConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-chefconfiguration
-- | - `CloneAppIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-cloneappids
-- | - `ClonePermissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-clonepermissions
-- | - `ConfigurationManager`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-configmanager
-- | - `CustomCookbooksSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custcookbooksource
-- | - `CustomJson`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custjson
-- | - `DefaultAvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultaz
-- | - `DefaultInstanceProfileArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultinstanceprof
-- | - `DefaultOs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultos
-- | - `DefaultRootDeviceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultrootdevicetype
-- | - `DefaultSshKeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultsshkeyname
-- | - `DefaultSubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#defaultsubnet
-- | - `EcsClusterArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-ecsclusterarn
-- | - `ElasticIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-elasticips
-- | - `HostnameTheme`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-hostnametheme
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-name
-- | - `RdsDbInstances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-rdsdbinstances
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-servicerolearn
-- | - `SourceStackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-sourcestackid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-tags
-- | - `UseCustomCookbooks`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#usecustcookbooks
-- | - `UseOpsworksSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-useopsworkssecuritygroups
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-vpcid
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
  , "CustomJson" :: Maybe Json
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

-- | `AWS::OpsWorks::Stack.ElasticIp`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html
-- |
-- | - `Ip`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-ip
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-name
type ElasticIp =
  { "Ip" :: String
  , "Name" :: Maybe String
  }

elasticIp :: { "Ip" :: String } -> ElasticIp
elasticIp required =
  merge required
    { "Name" : Nothing
    }

-- | `AWS::OpsWorks::Stack.ChefConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html
-- |
-- | - `BerkshelfVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
-- | - `ManageBerkshelf`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
type ChefConfiguration =
  { "BerkshelfVersion" :: Maybe String
  , "ManageBerkshelf" :: Maybe Boolean
  }

chefConfiguration :: ChefConfiguration
chefConfiguration =
  { "BerkshelfVersion" : Nothing
  , "ManageBerkshelf" : Nothing
  }

-- | `AWS::OpsWorks::Stack.Source`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html
-- |
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-password
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
-- | - `SshKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
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

-- | `AWS::OpsWorks::Stack.RdsDbInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html
-- |
-- | - `DbPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbpassword
-- | - `DbUser`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbuser
-- | - `RdsDbInstanceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-rdsdbinstancearn
type RdsDbInstance =
  { "DbPassword" :: String
  , "DbUser" :: String
  , "RdsDbInstanceArn" :: String
  }

rdsDbInstance :: { "DbPassword" :: String, "DbUser" :: String, "RdsDbInstanceArn" :: String } -> RdsDbInstance
rdsDbInstance required =
  required

-- | `AWS::OpsWorks::Stack.StackConfigurationManager`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-name
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html#cfn-opsworks-configmanager-version
type StackConfigurationManager =
  { "Name" :: Maybe String
  , "Version" :: Maybe String
  }

stackConfigurationManager :: StackConfigurationManager
stackConfigurationManager =
  { "Name" : Nothing
  , "Version" : Nothing
  }