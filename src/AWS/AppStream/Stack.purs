module AWS.AppStream.Stack where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


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

type UserSetting =
  { "Action" :: String
  , "Permission" :: String
  }

userSetting :: { "Action" :: String, "Permission" :: String } -> UserSetting
userSetting required =
  required

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

type ApplicationSettings =
  { "Enabled" :: Boolean
  , "SettingsGroup" :: Maybe String
  }

applicationSettings :: { "Enabled" :: Boolean } -> ApplicationSettings
applicationSettings required =
  merge required
    { "SettingsGroup" : Nothing
    }