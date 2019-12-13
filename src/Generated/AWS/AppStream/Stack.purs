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
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-description
-- | - `StorageConnectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-storageconnectors
-- | - `DeleteStorageConnectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-deletestorageconnectors
-- | - `EmbedHostDomains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-embedhostdomains
-- | - `UserSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-usersettings
-- | - `AttributesToDelete`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-attributestodelete
-- | - `RedirectURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-redirecturl
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-name
-- | - `FeedbackURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-feedbackurl
-- | - `ApplicationSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-applicationsettings
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-displayname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-tags
-- | - `AccessEndpoints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-accessendpoints
newtype Stack = Stack
  { "Description" :: Maybe (Value String)
  , "StorageConnectors" :: Maybe (Value (Array StorageConnector))
  , "DeleteStorageConnectors" :: Maybe (Value Boolean)
  , "EmbedHostDomains" :: Maybe (Value (Array String))
  , "UserSettings" :: Maybe (Value (Array UserSetting))
  , "AttributesToDelete" :: Maybe (Value (Array String))
  , "RedirectURL" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "FeedbackURL" :: Maybe (Value String)
  , "ApplicationSettings" :: Maybe (Value ApplicationSettings)
  , "DisplayName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "AccessEndpoints" :: Maybe (Value (Array AccessEndpoint))
  }

derive instance newtypeStack :: Newtype Stack _
derive newtype instance writeStack :: WriteForeign Stack
instance resourceStack :: Resource Stack where type_ _ = "AWS::AppStream::Stack"

stack :: Stack
stack = Stack
  { "Description" : Nothing
  , "StorageConnectors" : Nothing
  , "DeleteStorageConnectors" : Nothing
  , "EmbedHostDomains" : Nothing
  , "UserSettings" : Nothing
  , "AttributesToDelete" : Nothing
  , "RedirectURL" : Nothing
  , "Name" : Nothing
  , "FeedbackURL" : Nothing
  , "ApplicationSettings" : Nothing
  , "DisplayName" : Nothing
  , "Tags" : Nothing
  , "AccessEndpoints" : Nothing
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

-- | `AWS::AppStream::Stack.AccessEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html
-- |
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-endpointtype
-- | - `VpceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-vpceid
type AccessEndpoint =
  { "EndpointType" :: Value String
  , "VpceId" :: Value String
  }

accessEndpoint :: { "EndpointType" :: Value String, "VpceId" :: Value String } -> AccessEndpoint
accessEndpoint required =
  required

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