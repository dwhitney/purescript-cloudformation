module CloudFormation.AWS.SSM.Document where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SSM::Document`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html
-- |
-- | - `Content`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-content
-- | - `DocumentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-documenttype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-tags
newtype Document = Document
  { "Content" :: CF.Json
  , "DocumentType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDocument :: Newtype Document _
instance resourceDocument :: Resource Document where type_ _ = "AWS::SSM::Document"

document :: { "Content" :: CF.Json } -> Document
document required = Document
  (merge required
    { "DocumentType" : Nothing
    , "Tags" : Nothing
    })