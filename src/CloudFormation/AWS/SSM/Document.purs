module CloudFormation.AWS.SSM.Document where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::SSM::Document`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html-- |
-- | - `Content`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-content
-- | - `DocumentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-documenttype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-document.html#cfn-ssm-document-tags
type Document =
  { "Content" :: Foreign
  , "DocumentType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

document :: { "Content" :: Foreign } -> Document
document required =
  merge required
    { "DocumentType" : Nothing
    , "Tags" : Nothing
    }