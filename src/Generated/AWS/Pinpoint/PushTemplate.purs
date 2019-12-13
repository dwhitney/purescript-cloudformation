module CloudFormation.AWS.Pinpoint.PushTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::PushTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html
-- |
-- | - `GCM`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-gcm
-- | - `Baidu`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-baidu
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatename
-- | - `ADM`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-adm
-- | - `APNS`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-apns
-- | - `TemplateDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatedescription
-- | - `DefaultSubstitutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-defaultsubstitutions
-- | - `Default`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-default
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-tags
newtype PushTemplate = PushTemplate
  { "TemplateName" :: Value String
  , "GCM" :: Maybe (Value AndroidPushNotificationTemplate)
  , "Baidu" :: Maybe (Value AndroidPushNotificationTemplate)
  , "ADM" :: Maybe (Value AndroidPushNotificationTemplate)
  , "APNS" :: Maybe (Value APNSPushNotificationTemplate)
  , "TemplateDescription" :: Maybe (Value String)
  , "DefaultSubstitutions" :: Maybe (Value String)
  , "Default" :: Maybe (Value DefaultPushNotificationTemplate)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypePushTemplate :: Newtype PushTemplate _
derive newtype instance writePushTemplate :: WriteForeign PushTemplate
instance resourcePushTemplate :: Resource PushTemplate where type_ _ = "AWS::Pinpoint::PushTemplate"

pushTemplate :: { "TemplateName" :: Value String } -> PushTemplate
pushTemplate required = PushTemplate
  (merge required
    { "GCM" : Nothing
    , "Baidu" : Nothing
    , "ADM" : Nothing
    , "APNS" : Nothing
    , "TemplateDescription" : Nothing
    , "DefaultSubstitutions" : Nothing
    , "Default" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Pinpoint::PushTemplate.APNSPushNotificationTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-action
-- | - `MediaUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-mediaurl
-- | - `Title`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-title
-- | - `Sound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-sound
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-body
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-url
type APNSPushNotificationTemplate =
  { "Action" :: Maybe (Value String)
  , "MediaUrl" :: Maybe (Value String)
  , "Title" :: Maybe (Value String)
  , "Sound" :: Maybe (Value String)
  , "Body" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  }

apnspPNSPushNotificationTemplate :: APNSPushNotificationTemplate
apnspPNSPushNotificationTemplate =
  { "Action" : Nothing
  , "MediaUrl" : Nothing
  , "Title" : Nothing
  , "Sound" : Nothing
  , "Body" : Nothing
  , "Url" : Nothing
  }

-- | `AWS::Pinpoint::PushTemplate.DefaultPushNotificationTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-action
-- | - `Title`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-title
-- | - `Sound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-sound
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-body
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-url
type DefaultPushNotificationTemplate =
  { "Action" :: Maybe (Value String)
  , "Title" :: Maybe (Value String)
  , "Sound" :: Maybe (Value String)
  , "Body" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  }

defaultPushNotificationTemplate :: DefaultPushNotificationTemplate
defaultPushNotificationTemplate =
  { "Action" : Nothing
  , "Title" : Nothing
  , "Sound" : Nothing
  , "Body" : Nothing
  , "Url" : Nothing
  }

-- | `AWS::Pinpoint::PushTemplate.AndroidPushNotificationTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-action
-- | - `ImageUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageurl
-- | - `SmallImageIconUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-smallimageiconurl
-- | - `Title`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-title
-- | - `ImageIconUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageiconurl
-- | - `Sound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-sound
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-body
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-url
type AndroidPushNotificationTemplate =
  { "Action" :: Maybe (Value String)
  , "ImageUrl" :: Maybe (Value String)
  , "SmallImageIconUrl" :: Maybe (Value String)
  , "Title" :: Maybe (Value String)
  , "ImageIconUrl" :: Maybe (Value String)
  , "Sound" :: Maybe (Value String)
  , "Body" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  }

androidPushNotificationTemplate :: AndroidPushNotificationTemplate
androidPushNotificationTemplate =
  { "Action" : Nothing
  , "ImageUrl" : Nothing
  , "SmallImageIconUrl" : Nothing
  , "Title" : Nothing
  , "ImageIconUrl" : Nothing
  , "Sound" : Nothing
  , "Body" : Nothing
  , "Url" : Nothing
  }