module CloudFormation.AWS.CloudFront.CloudFrontOriginAccessIdentity where 




type CloudFrontOriginAccessIdentity =
  { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig
  }

cloudFrontOriginAccessIdentity :: { "CloudFrontOriginAccessIdentityConfig" :: CloudFrontOriginAccessIdentityConfig } -> CloudFrontOriginAccessIdentity
cloudFrontOriginAccessIdentity required =
  required

type CloudFrontOriginAccessIdentityConfig =
  { "Comment" :: String
  }

cloudFrontOriginAccessIdentityConfig :: { "Comment" :: String } -> CloudFrontOriginAccessIdentityConfig
cloudFrontOriginAccessIdentityConfig required =
  required