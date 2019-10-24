module CloudFormation.AWS.AmazonMQ.Broker where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AmazonMQ::Broker`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html
-- |
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-securitygroups
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
  { "EngineVersion" :: String
  , "HostInstanceType" :: String
  , "AutoMinorVersionUpgrade" :: Boolean
  , "Users" :: Array User
  , "BrokerName" :: String
  , "DeploymentMode" :: String
  , "EngineType" :: String
  , "PubliclyAccessible" :: Boolean
  , "SecurityGroups" :: Maybe (Array String)
  , "Configuration" :: Maybe ConfigurationId
  , "MaintenanceWindowStartTime" :: Maybe MaintenanceWindow
  , "Logs" :: Maybe LogList
  , "SubnetIds" :: Maybe (Array String)
  , "EncryptionOptions" :: Maybe EncryptionOptions
  , "Tags" :: Maybe (Array TagsEntry)
  }

derive instance newtypeBroker :: Newtype Broker _
instance resourceBroker :: Resource Broker where type_ _ = "AWS::AmazonMQ::Broker"

broker :: { "EngineVersion" :: String, "HostInstanceType" :: String, "AutoMinorVersionUpgrade" :: Boolean, "Users" :: Array User, "BrokerName" :: String, "DeploymentMode" :: String, "EngineType" :: String, "PubliclyAccessible" :: Boolean } -> Broker
broker required = Broker
  (merge required
    { "SecurityGroups" : Nothing
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
  { "Revision" :: Int
  , "Id" :: String
  }

configurationId :: { "Revision" :: Int, "Id" :: String } -> ConfigurationId
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
  { "Username" :: String
  , "Password" :: String
  , "Groups" :: Maybe (Array String)
  , "ConsoleAccess" :: Maybe Boolean
  }

user :: { "Username" :: String, "Password" :: String } -> User
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
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
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
  { "Audit" :: Maybe Boolean
  , "General" :: Maybe Boolean
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
  { "DayOfWeek" :: String
  , "TimeOfDay" :: String
  , "TimeZone" :: String
  }

maintenanceWindow :: { "DayOfWeek" :: String, "TimeOfDay" :: String, "TimeZone" :: String } -> MaintenanceWindow
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
  { "UseAwsOwnedKey" :: Boolean
  , "KmsKeyId" :: Maybe String
  }

encryptionOptions :: { "UseAwsOwnedKey" :: Boolean } -> EncryptionOptions
encryptionOptions required =
  (merge required
    { "KmsKeyId" : Nothing
    })