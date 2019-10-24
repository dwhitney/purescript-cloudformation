module CloudFormation.AWS.CloudFront.CloudFrontOriginAccessIdentity where 




-- | `AWS::CloudFront::CloudFrontOriginAccessIdentity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html
-- |
-- | - `CloudFrontOriginAccessIdentityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig
type CloudFrontOriginAccessIdentity =
  { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig
  }

cloudFrontOriginAccessIdentity :: { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig } -> CloudFrontOriginAccessIdentity
cloudFrontOriginAccessIdentity required =
  required

-- | `AWS::CloudFront::CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig-comment
type CloudFrontOriginAccessIdentityConfig =
  { "Comment" :: String
  }

cloudFrontOriginAccessIdentityConfig :: { "Comment" :: String } -> CloudFrontOriginAccessIdentityConfig
cloudFrontOriginAccessIdentityConfig required =
  required