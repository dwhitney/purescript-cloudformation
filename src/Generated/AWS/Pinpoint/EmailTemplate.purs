module CloudFormation.AWS.Pinpoint.EmailTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::EmailTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html
-- |
-- | - `HtmlPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-htmlpart
-- | - `TextPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-textpart
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatename
-- | - `TemplateDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatedescription
-- | - `DefaultSubstitutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-defaultsubstitutions
-- | - `Subject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-subject
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-tags
newtype EmailTemplate = EmailTemplate
  { "TemplateName" :: Value String
  , "Subject" :: Value String
  , "HtmlPart" :: Maybe (Value String)
  , "TextPart" :: Maybe (Value String)
  , "TemplateDescription" :: Maybe (Value String)
  , "DefaultSubstitutions" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeEmailTemplate :: Newtype EmailTemplate _
derive newtype instance writeEmailTemplate :: WriteForeign EmailTemplate
instance resourceEmailTemplate :: Resource EmailTemplate where type_ _ = "AWS::Pinpoint::EmailTemplate"

emailTemplate :: { "TemplateName" :: Value String, "Subject" :: Value String } -> EmailTemplate
emailTemplate required = EmailTemplate
  (merge required
    { "HtmlPart" : Nothing
    , "TextPart" : Nothing
    , "TemplateDescription" : Nothing
    , "DefaultSubstitutions" : Nothing
    , "Tags" : Nothing
    })