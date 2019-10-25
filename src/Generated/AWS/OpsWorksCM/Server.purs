module CloudFormation.AWS.OpsWorksCM.Server where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ServiceRoleArn" :: Value String
  , "InstanceProfileArn" :: Value String
  , "InstanceType" :: Value String
  , "KeyPair" :: Maybe (Value String)
  , "EngineVersion" :: Maybe (Value String)
  , "DisableAutomatedBackup" :: Maybe (Value Boolean)
  , "BackupId" :: Maybe (Value String)
  , "EngineModel" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "AssociatePublicIpAddress" :: Maybe (Value Boolean)
  , "PreferredBackupWindow" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SubnetIds" :: Maybe (Value (Array String))
  , "ServerName" :: Maybe (Value String)
  , "EngineAttributes" :: Maybe (Value (Array EngineAttribute))
  , "BackupRetentionCount" :: Maybe (Value Int)
  , "Engine" :: Maybe (Value String)
  }

derive instance newtypeServer :: Newtype Server _
derive newtype instance writeServer :: WriteForeign Server
instance resourceServer :: Resource Server where type_ _ = "AWS::OpsWorksCM::Server"

server :: { "ServiceRoleArn" :: Value String, "InstanceProfileArn" :: Value String, "InstanceType" :: Value String } -> Server
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
  { "Value" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

engineAttribute :: EngineAttribute
engineAttribute =
  { "Value" : Nothing
  , "Name" : Nothing
  }