module CloudFormation.AWS.SES.Template where 

import Data.Maybe (Maybe(..))


type Template =
  { "Template" :: Maybe Template_
  }

template :: Template
template =
  { "Template" : Nothing
  }

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