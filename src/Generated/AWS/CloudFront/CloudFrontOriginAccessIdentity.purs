module CloudFormation.AWS.CloudFront.CloudFrontOriginAccessIdentity where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFront::CloudFrontOriginAccessIdentity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html
-- |
-- | - `CloudFrontOriginAccessIdentityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig
newtype CloudFrontOriginAccessIdentity = CloudFrontOriginAccessIdentity
  { "CloudFrontOriginAccessIdentityConfig" :: Value CloudFrontOriginAccessIdentityConfig
  }

derive instance newtypeCloudFrontOriginAccessIdentity :: Newtype CloudFrontOriginAccessIdentity _
derive newtype instance writeCloudFrontOriginAccessIdentity :: WriteForeign CloudFrontOriginAccessIdentity
instance resourceCloudFrontOriginAccessIdentity :: Resource CloudFrontOriginAccessIdentity where type_ _ = "AWS::CloudFront::CloudFrontOriginAccessIdentity"

cloudFrontOriginAccessIdentity :: { "CloudFrontOriginAccessIdentityConfig" :: Value CloudFrontOriginAccessIdentityConfig } -> CloudFrontOriginAccessIdentity
cloudFrontOriginAccessIdentity required = CloudFrontOriginAccessIdentity
  required

-- | `AWS::CloudFront::CloudFrontOriginAccessIdentity.CloudFrontOriginAccessIdentityConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig-comment
type CloudFrontOriginAccessIdentityConfig =
  { "Comment" :: Value String
  }

cloudFrontOriginAccessIdentityConfig :: { "Comment" :: Value String } -> CloudFrontOriginAccessIdentityConfig
cloudFrontOriginAccessIdentityConfig required =
  required