module CloudFormation.AWS.OpsWorks.Stack where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Stack = Stack
  { "DefaultInstanceProfileArn" :: Value String
  , "Name" :: Value String
  , "ServiceRoleArn" :: Value String
  , "AgentVersion" :: Maybe (Value String)
  , "Attributes" :: Maybe (Value (Object String))
  , "ChefConfiguration" :: Maybe (Value ChefConfiguration)
  , "CloneAppIds" :: Maybe (Value (Array String))
  , "ClonePermissions" :: Maybe (Value Boolean)
  , "ConfigurationManager" :: Maybe (Value StackConfigurationManager)
  , "CustomCookbooksSource" :: Maybe (Value Source)
  , "CustomJson" :: Maybe (Value CF.Json)
  , "DefaultAvailabilityZone" :: Maybe (Value String)
  , "DefaultOs" :: Maybe (Value String)
  , "DefaultRootDeviceType" :: Maybe (Value String)
  , "DefaultSshKeyName" :: Maybe (Value String)
  , "DefaultSubnetId" :: Maybe (Value String)
  , "EcsClusterArn" :: Maybe (Value String)
  , "ElasticIps" :: Maybe (Value (Array ElasticIp))
  , "HostnameTheme" :: Maybe (Value String)
  , "RdsDbInstances" :: Maybe (Value (Array RdsDbInstance))
  , "SourceStackId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "UseCustomCookbooks" :: Maybe (Value Boolean)
  , "UseOpsworksSecurityGroups" :: Maybe (Value Boolean)
  , "VpcId" :: Maybe (Value String)
  }

derive instance newtypeStack :: Newtype Stack _
derive newtype instance writeStack :: WriteForeign Stack
instance resourceStack :: Resource Stack where type_ _ = "AWS::OpsWorks::Stack"

stack :: { "DefaultInstanceProfileArn" :: Value String, "Name" :: Value String, "ServiceRoleArn" :: Value String } -> Stack
stack required = Stack
  (merge required
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
    })

-- | `AWS::OpsWorks::Stack.ElasticIp`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html
-- |
-- | - `Ip`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-ip
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-name
type ElasticIp =
  { "Ip" :: Value String
  , "Name" :: Maybe (Value String)
  }

elasticIp :: { "Ip" :: Value String } -> ElasticIp
elasticIp required =
  (merge required
    { "Name" : Nothing
    })

-- | `AWS::OpsWorks::Stack.ChefConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html
-- |
-- | - `BerkshelfVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
-- | - `ManageBerkshelf`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html#cfn-opsworks-chefconfiguration-berkshelfversion
type ChefConfiguration =
  { "BerkshelfVersion" :: Maybe (Value String)
  , "ManageBerkshelf" :: Maybe (Value Boolean)
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
  { "Password" :: Maybe (Value String)
  , "Revision" :: Maybe (Value String)
  , "SshKey" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  , "Username" :: Maybe (Value String)
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
  { "DbPassword" :: Value String
  , "DbUser" :: Value String
  , "RdsDbInstanceArn" :: Value String
  }

rdsDbInstance :: { "DbPassword" :: Value String, "DbUser" :: Value String, "RdsDbInstanceArn" :: Value String } -> RdsDbInstance
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
  { "Name" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  }

stackConfigurationManager :: StackConfigurationManager
stackConfigurationManager =
  { "Name" : Nothing
  , "Version" : Nothing
  }