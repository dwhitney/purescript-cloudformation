module CloudFormation.AWS.WAFRegional.WebACLAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::WebACLAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html
-- |
-- | - `ResourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-resourcearn
-- | - `WebACLId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-webaclid
newtype WebACLAssociation = WebACLAssociation
  { "ResourceArn" :: Value String
  , "WebACLId" :: Value String
  }

derive instance newtypeWebACLAssociation :: Newtype WebACLAssociation _
derive newtype instance writeWebACLAssociation :: WriteForeign WebACLAssociation
instance resourceWebACLAssociation :: Resource WebACLAssociation where type_ _ = "AWS::WAFRegional::WebACLAssociation"

webACLAssociation :: { "ResourceArn" :: Value String, "WebACLId" :: Value String } -> WebACLAssociation
webACLAssociation required = WebACLAssociation
  required