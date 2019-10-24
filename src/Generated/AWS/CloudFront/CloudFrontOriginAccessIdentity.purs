module CloudFormation.AWS.CloudFront.CloudFrontOriginAccessIdentity where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CloudFront::CloudFrontOriginAccessIdentity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html
-- |
-- | - `CloudFrontOriginAccessIdentityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig
newtype CloudFrontOriginAccessIdentity = CloudFrontOriginAccessIdentity
  { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig
  }

derive instance newtypeCloudFrontOriginAccessIdentity :: Newtype CloudFrontOriginAccessIdentity _
instance resourceCloudFrontOriginAccessIdentity :: Resource CloudFrontOriginAccessIdentity where type_ _ = "AWS::CloudFront::CloudFrontOriginAccessIdentity"

cloudFrontOriginAccessIdentity :: { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig } -> CloudFrontOriginAccessIdentity
cloudFrontOriginAccessIdentity required = CloudFrontOriginAccessIdentity
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