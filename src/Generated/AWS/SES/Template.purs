module CloudFormation.AWS.SES.Template where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SES::Template`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html
-- |
-- | - `Template`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html#cfn-ses-template-template
newtype Template = Template
  { "Template" :: Maybe Template_
  }

derive instance newtypeTemplate :: Newtype Template _
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
  { "HtmlPart" :: Maybe String
  , "TextPart" :: Maybe String
  , "TemplateName" :: Maybe String
  , "SubjectPart" :: Maybe String
  }

template_ :: Template_
template_ =
  { "HtmlPart" : Nothing
  , "TextPart" : Nothing
  , "TemplateName" : Nothing
  , "SubjectPart" : Nothing
  }