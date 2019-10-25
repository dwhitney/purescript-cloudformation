module CloudFormation.AWS.AppStream.Stack where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::AppStream::Stack`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html
-- |
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
newtype Stack = Stack
  { "ApplicationSettings" :: Maybe (Value ApplicationSettings)
  , "Description" :: Maybe (Value String)
  , "StorageConnectors" :: Maybe (Value (Array StorageConnector))
  , "DeleteStorageConnectors" :: Maybe (Value Boolean)
  , "UserSettings" :: Maybe (Value (Array UserSetting))
  , "AttributesToDelete" :: Maybe (Value (Array String))
  , "DisplayName" :: Maybe (Value String)
  , "RedirectURL" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  , "FeedbackURL" :: Maybe (Value String)
  }

derive instance newtypeStack :: Newtype Stack _
derive newtype instance writeStack :: WriteForeign Stack
instance resourceStack :: Resource Stack where type_ _ = "AWS::AppStream::Stack"

stack :: Stack
stack = Stack
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

-- | `AWS::AppStream::Stack.UserSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-action
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-permission
type UserSetting =
  { "Action" :: Value String
  , "Permission" :: Value String
  }

userSetting :: { "Action" :: Value String, "Permission" :: Value String } -> UserSetting
userSetting required =
  required

-- | `AWS::AppStream::Stack.StorageConnector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html
-- |
-- | - `Domains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-domains
-- | - `ResourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-resourceidentifier
-- | - `ConnectorType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-storageconnector.html#cfn-appstream-stack-storageconnector-connectortype
type StorageConnector =
  { "ConnectorType" :: Value String
  , "Domains" :: Maybe (Value (Array String))
  , "ResourceIdentifier" :: Maybe (Value String)
  }

storageConnector :: { "ConnectorType" :: Value String } -> StorageConnector
storageConnector required =
  (merge required
    { "Domains" : Nothing
    , "ResourceIdentifier" : Nothing
    })

-- | `AWS::AppStream::Stack.ApplicationSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html
-- |
-- | - `SettingsGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-settingsgroup
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-enabled
type ApplicationSettings =
  { "Enabled" :: Value Boolean
  , "SettingsGroup" :: Maybe (Value String)
  }

applicationSettings :: { "Enabled" :: Value Boolean } -> ApplicationSettings
applicationSettings required =
  (merge required
    { "SettingsGroup" : Nothing
    })