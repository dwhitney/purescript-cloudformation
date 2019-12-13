module CloudFormation.AWS.AmazonMQ.Broker where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AmazonMQ::Broker`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html
-- |
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-securitygroups
-- | - `StorageType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-storagetype
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-engineversion
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-configuration
-- | - `MaintenanceWindowStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-maintenancewindowstarttime
-- | - `HostInstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-hostinstancetype
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-autominorversionupgrade
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-users
-- | - `Logs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-logs
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-subnetids
-- | - `BrokerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-brokername
-- | - `DeploymentMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-deploymentmode
-- | - `EngineType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-enginetype
-- | - `PubliclyAccessible`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-publiclyaccessible
-- | - `EncryptionOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-encryptionoptions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-tags
newtype Broker = Broker
  { "EngineVersion" :: Value String
  , "HostInstanceType" :: Value String
  , "AutoMinorVersionUpgrade" :: Value Boolean
  , "Users" :: Value (Array User)
  , "BrokerName" :: Value String
  , "DeploymentMode" :: Value String
  , "EngineType" :: Value String
  , "PubliclyAccessible" :: Value Boolean
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "StorageType" :: Maybe (Value String)
  , "Configuration" :: Maybe (Value ConfigurationId)
  , "MaintenanceWindowStartTime" :: Maybe (Value MaintenanceWindow)
  , "Logs" :: Maybe (Value LogList)
  , "SubnetIds" :: Maybe (Value (Array String))
  , "EncryptionOptions" :: Maybe (Value EncryptionOptions)
  , "Tags" :: Maybe (Value (Array TagsEntry))
  }

derive instance newtypeBroker :: Newtype Broker _
derive newtype instance writeBroker :: WriteForeign Broker
instance resourceBroker :: Resource Broker where type_ _ = "AWS::AmazonMQ::Broker"

broker :: { "EngineVersion" :: Value String, "HostInstanceType" :: Value String, "AutoMinorVersionUpgrade" :: Value Boolean, "Users" :: Value (Array User), "BrokerName" :: Value String, "DeploymentMode" :: Value String, "EngineType" :: Value String, "PubliclyAccessible" :: Value Boolean } -> Broker
broker required = Broker
  (merge required
    { "SecurityGroups" : Nothing
    , "StorageType" : Nothing
    , "Configuration" : Nothing
    , "MaintenanceWindowStartTime" : Nothing
    , "Logs" : Nothing
    , "SubnetIds" : Nothing
    , "EncryptionOptions" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::AmazonMQ::Broker.ConfigurationId`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html
-- |
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-revision
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-id
type ConfigurationId =
  { "Revision" :: Value Int
  , "Id" :: Value String
  }

configurationId :: { "Revision" :: Value Int, "Id" :: Value String } -> ConfigurationId
configurationId required =
  required

-- | `AWS::AmazonMQ::Broker.User`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html
-- |
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-username
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-groups
-- | - `ConsoleAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-consoleaccess
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-password
type User =
  { "Username" :: Value String
  , "Password" :: Value String
  , "Groups" :: Maybe (Value (Array String))
  , "ConsoleAccess" :: Maybe (Value Boolean)
  }

user :: { "Username" :: Value String, "Password" :: Value String } -> User
user required =
  (merge required
    { "Groups" : Nothing
    , "ConsoleAccess" : Nothing
    })

-- | `AWS::AmazonMQ::Broker.TagsEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html#cfn-amazonmq-broker-tagsentry-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html#cfn-amazonmq-broker-tagsentry-key
type TagsEntry =
  { "Value" :: Value String
  , "Key" :: Value String
  }

tagsEntry :: { "Value" :: Value String, "Key" :: Value String } -> TagsEntry
tagsEntry required =
  required

-- | `AWS::AmazonMQ::Broker.LogList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html
-- |
-- | - `Audit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html#cfn-amazonmq-broker-loglist-audit
-- | - `General`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html#cfn-amazonmq-broker-loglist-general
type LogList =
  { "Audit" :: Maybe (Value Boolean)
  , "General" :: Maybe (Value Boolean)
  }

logList :: LogList
logList =
  { "Audit" : Nothing
  , "General" : Nothing
  }

-- | `AWS::AmazonMQ::Broker.MaintenanceWindow`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html
-- |
-- | - `DayOfWeek`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-dayofweek
-- | - `TimeOfDay`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-timeofday
-- | - `TimeZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-maintenancewindow.html#cfn-amazonmq-broker-maintenancewindow-timezone
type MaintenanceWindow =
  { "DayOfWeek" :: Value String
  , "TimeOfDay" :: Value String
  , "TimeZone" :: Value String
  }

maintenanceWindow :: { "DayOfWeek" :: Value String, "TimeOfDay" :: Value String, "TimeZone" :: Value String } -> MaintenanceWindow
maintenanceWindow required =
  required

-- | `AWS::AmazonMQ::Broker.EncryptionOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html
-- |
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-kmskeyid
-- | - `UseAwsOwnedKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-useawsownedkey
type EncryptionOptions =
  { "UseAwsOwnedKey" :: Value Boolean
  , "KmsKeyId" :: Maybe (Value String)
  }

encryptionOptions :: { "UseAwsOwnedKey" :: Value Boolean } -> EncryptionOptions
encryptionOptions required =
  (merge required
    { "KmsKeyId" : Nothing
    })