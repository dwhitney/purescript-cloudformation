module CloudFormation.AWS.SES.Template where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SES::Template`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html
-- |
-- | - `Template`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html#cfn-ses-template-template
newtype Template = Template
  { "Template" :: Maybe (Value Template_)
  }

derive instance newtypeTemplate :: Newtype Template _
derive newtype instance writeTemplate :: WriteForeign Template
instance resourceTemplate :: Resource Template where type_ _ = "AWS::SES::Template"

template :: Template
template = Template
  { "Template" : Nothing
  }

-- | `AWS::SES::Template.Template`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html
-- |
-- | - `HtmlPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-htmlpart
-- | - `TextPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-textpart
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-templatename
-- | - `SubjectPart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-subjectpart
type Template_ =
  { "HtmlPart" :: Maybe (Value String)
  , "TextPart" :: Maybe (Value String)
  , "TemplateName" :: Maybe (Value String)
  , "SubjectPart" :: Maybe (Value String)
  }

template_ :: Template_
template_ =
  { "HtmlPart" : Nothing
  , "TextPart" : Nothing
  , "TemplateName" : Nothing
  , "SubjectPart" : Nothing
  }