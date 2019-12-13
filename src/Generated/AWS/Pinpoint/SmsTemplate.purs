module CloudFormation.AWS.Pinpoint.SmsTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::SmsTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html
-- |
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatename
-- | - `TemplateDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatedescription
-- | - `DefaultSubstitutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-defaultsubstitutions
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-body
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-tags
newtype SmsTemplate = SmsTemplate
  { "TemplateName" :: Value String
  , "Body" :: Value String
  , "TemplateDescription" :: Maybe (Value String)
  , "DefaultSubstitutions" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeSmsTemplate :: Newtype SmsTemplate _
derive newtype instance writeSmsTemplate :: WriteForeign SmsTemplate
instance resourceSmsTemplate :: Resource SmsTemplate where type_ _ = "AWS::Pinpoint::SmsTemplate"

smsTemplate :: { "TemplateName" :: Value String, "Body" :: Value String } -> SmsTemplate
smsTemplate required = SmsTemplate
  (merge required
    { "TemplateDescription" : Nothing
    , "DefaultSubstitutions" : Nothing
    , "Tags" : Nothing
    })