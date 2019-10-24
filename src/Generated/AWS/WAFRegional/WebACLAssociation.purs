module CloudFormation.AWS.WAFRegional.WebACLAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAFRegional::WebACLAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html
-- |
-- | - `ResourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-resourcearn
-- | - `WebACLId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-webaclid
newtype WebACLAssociation = WebACLAssociation
  { "ResourceArn" :: String
  , "WebACLId" :: String
  }

derive instance newtypeWebACLAssociation :: Newtype WebACLAssociation _
instance resourceWebACLAssociation :: Resource WebACLAssociation where type_ _ = "AWS::WAFRegional::WebACLAssociation"

webACLAssociation :: { "ResourceArn" :: String, "WebACLId" :: String } -> WebACLAssociation
webACLAssociation required = WebACLAssociation
  required