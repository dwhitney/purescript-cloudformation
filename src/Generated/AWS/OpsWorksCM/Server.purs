module CloudFormation.AWS.OpsWorksCM.Server where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::OpsWorksCM::Server`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html
-- |
-- | - `KeyPair`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-keypair
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineversion
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-servicerolearn
-- | - `DisableAutomatedBackup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-disableautomatedbackup
-- | - `BackupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupid
-- | - `EngineModel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-enginemodel
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredmaintenancewindow
-- | - `AssociatePublicIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-associatepublicipaddress
-- | - `InstanceProfileArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instanceprofilearn
-- | - `PreferredBackupWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredbackupwindow
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-subnetids
-- | - `ServerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-servername
-- | - `EngineAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineattributes
-- | - `BackupRetentionCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupretentioncount
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instancetype
-- | - `Engine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engine
newtype Server = Server
  { "ServiceRoleArn" :: String
  , "InstanceProfileArn" :: String
  , "InstanceType" :: String
  , "KeyPair" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "DisableAutomatedBackup" :: Maybe Boolean
  , "BackupId" :: Maybe String
  , "EngineModel" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AssociatePublicIpAddress" :: Maybe Boolean
  , "PreferredBackupWindow" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  , "ServerName" :: Maybe String
  , "EngineAttributes" :: Maybe (Array EngineAttribute)
  , "BackupRetentionCount" :: Maybe Int
  , "Engine" :: Maybe String
  }

derive instance newtypeServer :: Newtype Server _
instance resourceServer :: Resource Server where type_ _ = "AWS::OpsWorksCM::Server"

server :: { "ServiceRoleArn" :: String, "InstanceProfileArn" :: String, "InstanceType" :: String } -> Server
server required = Server
  (merge required
    { "KeyPair" : Nothing
    , "EngineVersion" : Nothing
    , "DisableAutomatedBackup" : Nothing
    , "BackupId" : Nothing
    , "EngineModel" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AssociatePublicIpAddress" : Nothing
    , "PreferredBackupWindow" : Nothing
    , "SecurityGroupIds" : Nothing
    , "SubnetIds" : Nothing
    , "ServerName" : Nothing
    , "EngineAttributes" : Nothing
    , "BackupRetentionCount" : Nothing
    , "Engine" : Nothing
    })

-- | `AWS::OpsWorksCM::Server.EngineAttribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworkscm-server-engineattribute.html#cfn-opsworkscm-server-engineattribute-name
type EngineAttribute =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

engineAttribute :: EngineAttribute
engineAttribute =
  { "Value" : Nothing
  , "Name" : Nothing
  }