module AWS.OpsWorksCM.Server where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Server =
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

server :: { "ServiceRoleArn" :: String, "InstanceProfileArn" :: String, "InstanceType" :: String } -> Server
server required =
  merge required
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
    }

type EngineAttribute =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

engineAttribute :: EngineAttribute
engineAttribute =
  { "Value" : Nothing
  , "Name" : Nothing
  }