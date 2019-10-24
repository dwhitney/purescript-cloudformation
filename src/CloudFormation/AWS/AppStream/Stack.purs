module CloudFormation.AWS.AppStream.Stack where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::AppStream::Stack`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html-- |
-- | - `ApplicationSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-applicationsettings
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-description
-- | - `StorageConnectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-storageconnectors
-- | - `DeleteStorageConnectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-deletestorageconnectors
-- | - `UserSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-usersettings
-- | - `AttributesToDelete`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-attributestodelete
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-displayname
-- | - `RedirectURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-redirecturl
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-name
-- | - `FeedbackURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-feedbackurl
type Stack =
  { "ApplicationSettings" :: Maybe ApplicationSettings
  , "Description" :: Maybe String
  , "StorageConnectors" :: Maybe (Array StorageConnector)
  , "DeleteStorageConnectors" :: Maybe Boolean
  , "UserSettings" :: Maybe (Array UserSetting)
  , "AttributesToDelete" :: Maybe (Array String)
  , "DisplayName" :: Maybe String
  , "RedirectURL" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  , "FeedbackURL" :: Maybe String
  }

stack :: Stack
stack =
  { "ApplicationSettings" : Nothing
  , "Description" : Nothing
  , "StorageConnectors" : Nothing
  , "DeleteStorageConnectors" : Nothing
  , "UserSettings" : Nothing
  , "AttributesToDelete" : Nothing
  , "DisplayName" : Nothing
  , "RedirectURL" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  , "FeedbackURL" : Nothing
  }

-- | `AWS::AppStream::Stack.UserSetting`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-action
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-permission
type UserSetting =
  { "Action" :: String
  , "Permission" :: String
  }

userSetting :: { "Action" :: String, "Permission" :: String } -> UserSetting
userSetting required =
  required

-- | `AWS::AppStream::Stack.StorageConnector`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html-- |
-- | - `Domains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-domains
-- | - `ResourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-resourceidentifier
-- | - `ConnectorType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-connectortype
type StorageConnector =
  { "ConnectorType" :: String
  , "Domains" :: Maybe (Array String)
  , "ResourceIdentifier" :: Maybe String
  }

storageConnector :: { "ConnectorType" :: String } -> StorageConnector
storageConnector required =
  merge required
    { "Domains" : Nothing
    , "ResourceIdentifier" : Nothing
    }

-- | `AWS::AppStream::Stack.ApplicationSettings`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html-- |
-- | - `SettingsGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-settingsgroup
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-enabled
type ApplicationSettings =
  { "Enabled" :: Boolean
  , "SettingsGroup" :: Maybe String
  }

applicationSettings :: { "Enabled" :: Boolean } -> ApplicationSettings
applicationSettings required =
  merge required
    { "SettingsGroup" : Nothing
    }