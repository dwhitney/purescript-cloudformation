module CloudFormation.AWS.WAFRegional.WebACLAssociation where 




-- | `AWS::WAFRegional::WebACLAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html
-- |
-- | - `ResourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-resourcearn
-- | - `WebACLId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-webaclid
type WebACLAssociation =
  { "ResourceArn" :: String
  , "WebACLId" :: String
  }

webACLAssociation :: { "ResourceArn" :: String, "WebACLId" :: String } -> WebACLAssociation
webACLAssociation required =
  required