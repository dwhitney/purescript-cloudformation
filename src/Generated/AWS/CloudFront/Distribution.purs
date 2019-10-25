module CloudFormation.AWS.CloudFront.Distribution where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFront::Distribution`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html
-- |
-- | - `DistributionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-distributionconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-tags
newtype Distribution = Distribution
  { "DistributionConfig" :: Value DistributionConfig
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDistribution :: Newtype Distribution _
derive newtype instance writeDistribution :: WriteForeign Distribution
instance resourceDistribution :: Resource Distribution where type_ _ = "AWS::CloudFront::Distribution"

distribution :: { "DistributionConfig" :: Value DistributionConfig } -> Distribution
distribution required = Distribution
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::CloudFront::Distribution.Logging`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html
-- |
-- | - `IncludeCookies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-includecookies
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-bucket
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-prefix
type Logging =
  { "Bucket" :: Value String
  , "IncludeCookies" :: Maybe (Value Boolean)
  , "Prefix" :: Maybe (Value String)
  }

logging :: { "Bucket" :: Value String } -> Logging
logging required =
  (merge required
    { "IncludeCookies" : Nothing
    , "Prefix" : Nothing
    })

-- | `AWS::CloudFront::Distribution.CustomErrorResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html
-- |
-- | - `ResponseCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsecode
-- | - `ErrorCachingMinTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcachingminttl
-- | - `ErrorCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcode
-- | - `ResponsePagePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsepagepath
type CustomErrorResponse =
  { "ErrorCode" :: Value Int
  , "ResponseCode" :: Maybe (Value Int)
  , "ErrorCachingMinTTL" :: Maybe (Value Number)
  , "ResponsePagePath" :: Maybe (Value String)
  }

customErrorResponse :: { "ErrorCode" :: Value Int } -> CustomErrorResponse
customErrorResponse required =
  (merge required
    { "ResponseCode" : Nothing
    , "ErrorCachingMinTTL" : Nothing
    , "ResponsePagePath" : Nothing
    })

-- | `AWS::CloudFront::Distribution.S3OriginConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html
-- |
-- | - `OriginAccessIdentity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html#cfn-cloudfront-distribution-s3originconfig-originaccessidentity
type S3OriginConfig =
  { "OriginAccessIdentity" :: Maybe (Value String)
  }

s3OriginConfig :: S3OriginConfig
s3OriginConfig =
  { "OriginAccessIdentity" : Nothing
  }

-- | `AWS::CloudFront::Distribution.ViewerCertificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html
-- |
-- | - `IamCertificateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-iamcertificateid
-- | - `SslSupportMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-sslsupportmethod
-- | - `MinimumProtocolVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-minimumprotocolversion
-- | - `CloudFrontDefaultCertificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-cloudfrontdefaultcertificate
-- | - `AcmCertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-acmcertificatearn
type ViewerCertificate =
  { "IamCertificateId" :: Maybe (Value String)
  , "SslSupportMethod" :: Maybe (Value String)
  , "MinimumProtocolVersion" :: Maybe (Value String)
  , "CloudFrontDefaultCertificate" :: Maybe (Value Boolean)
  , "AcmCertificateArn" :: Maybe (Value String)
  }

viewerCertificate :: ViewerCertificate
viewerCertificate =
  { "IamCertificateId" : Nothing
  , "SslSupportMethod" : Nothing
  , "MinimumProtocolVersion" : Nothing
  , "CloudFrontDefaultCertificate" : Nothing
  , "AcmCertificateArn" : Nothing
  }

-- | `AWS::CloudFront::Distribution.GeoRestriction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html
-- |
-- | - `Locations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-locations
-- | - `RestrictionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-restrictiontype
type GeoRestriction =
  { "RestrictionType" :: Value String
  , "Locations" :: Maybe (Value (Array String))
  }

geoRestriction :: { "RestrictionType" :: Value String } -> GeoRestriction
geoRestriction required =
  (merge required
    { "Locations" : Nothing
    })

-- | `AWS::CloudFront::Distribution.ForwardedValues`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html
-- |
-- | - `Cookies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies
-- | - `Headers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers
-- | - `QueryString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring
-- | - `QueryStringCacheKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys
type ForwardedValues =
  { "QueryString" :: Value Boolean
  , "Cookies" :: Maybe (Value Cookies)
  , "Headers" :: Maybe (Value (Array String))
  , "QueryStringCacheKeys" :: Maybe (Value (Array String))
  }

forwardedValues :: { "QueryString" :: Value Boolean } -> ForwardedValues
forwardedValues required =
  (merge required
    { "Cookies" : Nothing
    , "Headers" : Nothing
    , "QueryStringCacheKeys" : Nothing
    })

-- | `AWS::CloudFront::Distribution.CustomOriginConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html
-- |
-- | - `OriginReadTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originreadtimeout
-- | - `HTTPSPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpsport
-- | - `OriginKeepaliveTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originkeepalivetimeout
-- | - `OriginSSLProtocols`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originsslprotocols
-- | - `HTTPPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpport
-- | - `OriginProtocolPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originprotocolpolicy
type CustomOriginConfig =
  { "OriginProtocolPolicy" :: Value String
  , "OriginReadTimeout" :: Maybe (Value Int)
  , "HTTPSPort" :: Maybe (Value Int)
  , "OriginKeepaliveTimeout" :: Maybe (Value Int)
  , "OriginSSLProtocols" :: Maybe (Value (Array String))
  , "HTTPPort" :: Maybe (Value Int)
  }

customOriginConfig :: { "OriginProtocolPolicy" :: Value String } -> CustomOriginConfig
customOriginConfig required =
  (merge required
    { "OriginReadTimeout" : Nothing
    , "HTTPSPort" : Nothing
    , "OriginKeepaliveTimeout" : Nothing
    , "OriginSSLProtocols" : Nothing
    , "HTTPPort" : Nothing
    })

-- | `AWS::CloudFront::Distribution.OriginCustomHeader`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html
-- |
-- | - `HeaderValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headervalue
-- | - `HeaderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headername
type OriginCustomHeader =
  { "HeaderValue" :: Value String
  , "HeaderName" :: Value String
  }

originCustomHeader :: { "HeaderValue" :: Value String, "HeaderName" :: Value String } -> OriginCustomHeader
originCustomHeader required =
  required

-- | `AWS::CloudFront::Distribution.DistributionConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html
-- |
-- | - `Logging`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-logging
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-comment
-- | - `DefaultRootObject`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-defaultrootobject
-- | - `Origins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-origins
-- | - `ViewerCertificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-viewercertificate
-- | - `PriceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-priceclass
-- | - `DefaultCacheBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-defaultcachebehavior
-- | - `CustomErrorResponses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-customerrorresponses
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-enabled
-- | - `Aliases`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-aliases
-- | - `IPV6Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-ipv6enabled
-- | - `WebACLId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-webaclid
-- | - `HttpVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-httpversion
-- | - `Restrictions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions
-- | - `CacheBehaviors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-cachebehaviors
type DistributionConfig =
  { "Enabled" :: Value Boolean
  , "Logging" :: Maybe (Value Logging)
  , "Comment" :: Maybe (Value String)
  , "DefaultRootObject" :: Maybe (Value String)
  , "Origins" :: Maybe (Value (Array Origin))
  , "ViewerCertificate" :: Maybe (Value ViewerCertificate)
  , "PriceClass" :: Maybe (Value String)
  , "DefaultCacheBehavior" :: Maybe (Value DefaultCacheBehavior)
  , "CustomErrorResponses" :: Maybe (Value (Array CustomErrorResponse))
  , "Aliases" :: Maybe (Value (Array String))
  , "IPV6Enabled" :: Maybe (Value Boolean)
  , "WebACLId" :: Maybe (Value String)
  , "HttpVersion" :: Maybe (Value String)
  , "Restrictions" :: Maybe (Value Restrictions)
  , "CacheBehaviors" :: Maybe (Value (Array CacheBehavior))
  }

distributionConfig :: { "Enabled" :: Value Boolean } -> DistributionConfig
distributionConfig required =
  (merge required
    { "Logging" : Nothing
    , "Comment" : Nothing
    , "DefaultRootObject" : Nothing
    , "Origins" : Nothing
    , "ViewerCertificate" : Nothing
    , "PriceClass" : Nothing
    , "DefaultCacheBehavior" : Nothing
    , "CustomErrorResponses" : Nothing
    , "Aliases" : Nothing
    , "IPV6Enabled" : Nothing
    , "WebACLId" : Nothing
    , "HttpVersion" : Nothing
    , "Restrictions" : Nothing
    , "CacheBehaviors" : Nothing
    })

-- | `AWS::CloudFront::Distribution.Origin`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html
-- |
-- | - `OriginCustomHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-origincustomheaders
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-domainname
-- | - `S3OriginConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-s3originconfig
-- | - `OriginPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-originpath
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-id
-- | - `CustomOriginConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html#cfn-cloudfront-distribution-origin-customoriginconfig
type Origin =
  { "DomainName" :: Value String
  , "Id" :: Value String
  , "OriginCustomHeaders" :: Maybe (Value (Array OriginCustomHeader))
  , "S3OriginConfig" :: Maybe (Value S3OriginConfig)
  , "OriginPath" :: Maybe (Value String)
  , "CustomOriginConfig" :: Maybe (Value CustomOriginConfig)
  }

origin :: { "DomainName" :: Value String, "Id" :: Value String } -> Origin
origin required =
  (merge required
    { "OriginCustomHeaders" : Nothing
    , "S3OriginConfig" : Nothing
    , "OriginPath" : Nothing
    , "CustomOriginConfig" : Nothing
    })

-- | `AWS::CloudFront::Distribution.Restrictions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html
-- |
-- | - `GeoRestriction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html#cfn-cloudfront-distribution-restrictions-georestriction
type Restrictions =
  { "GeoRestriction" :: Value GeoRestriction
  }

restrictions :: { "GeoRestriction" :: Value GeoRestriction } -> Restrictions
restrictions required =
  required

-- | `AWS::CloudFront::Distribution.DefaultCacheBehavior`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html
-- |
-- | - `Compress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-compress
-- | - `LambdaFunctionAssociations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-lambdafunctionassociations
-- | - `TargetOriginId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-targetoriginid
-- | - `ViewerProtocolPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-viewerprotocolpolicy
-- | - `TrustedSigners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-trustedsigners
-- | - `DefaultTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-defaultttl
-- | - `FieldLevelEncryptionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-fieldlevelencryptionid
-- | - `AllowedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-allowedmethods
-- | - `CachedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-cachedmethods
-- | - `SmoothStreaming`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-smoothstreaming
-- | - `ForwardedValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-forwardedvalues
-- | - `MinTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-minttl
-- | - `MaxTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-maxttl
type DefaultCacheBehavior =
  { "TargetOriginId" :: Value String
  , "ViewerProtocolPolicy" :: Value String
  , "ForwardedValues" :: Value ForwardedValues
  , "Compress" :: Maybe (Value Boolean)
  , "LambdaFunctionAssociations" :: Maybe (Value (Array LambdaFunctionAssociation))
  , "TrustedSigners" :: Maybe (Value (Array String))
  , "DefaultTTL" :: Maybe (Value Number)
  , "FieldLevelEncryptionId" :: Maybe (Value String)
  , "AllowedMethods" :: Maybe (Value (Array String))
  , "CachedMethods" :: Maybe (Value (Array String))
  , "SmoothStreaming" :: Maybe (Value Boolean)
  , "MinTTL" :: Maybe (Value Number)
  , "MaxTTL" :: Maybe (Value Number)
  }

defaultCacheBehavior :: { "TargetOriginId" :: Value String, "ViewerProtocolPolicy" :: Value String, "ForwardedValues" :: Value ForwardedValues } -> DefaultCacheBehavior
defaultCacheBehavior required =
  (merge required
    { "Compress" : Nothing
    , "LambdaFunctionAssociations" : Nothing
    , "TrustedSigners" : Nothing
    , "DefaultTTL" : Nothing
    , "FieldLevelEncryptionId" : Nothing
    , "AllowedMethods" : Nothing
    , "CachedMethods" : Nothing
    , "SmoothStreaming" : Nothing
    , "MinTTL" : Nothing
    , "MaxTTL" : Nothing
    })

-- | `AWS::CloudFront::Distribution.CacheBehavior`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html
-- |
-- | - `Compress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-compress
-- | - `LambdaFunctionAssociations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-lambdafunctionassociations
-- | - `TargetOriginId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-targetoriginid
-- | - `ViewerProtocolPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-viewerprotocolpolicy
-- | - `TrustedSigners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-trustedsigners
-- | - `DefaultTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-defaultttl
-- | - `FieldLevelEncryptionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-fieldlevelencryptionid
-- | - `AllowedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-allowedmethods
-- | - `PathPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-pathpattern
-- | - `CachedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-cachedmethods
-- | - `SmoothStreaming`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-smoothstreaming
-- | - `ForwardedValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-forwardedvalues
-- | - `MinTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-minttl
-- | - `MaxTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-maxttl
type CacheBehavior =
  { "TargetOriginId" :: Value String
  , "ViewerProtocolPolicy" :: Value String
  , "PathPattern" :: Value String
  , "ForwardedValues" :: Value ForwardedValues
  , "Compress" :: Maybe (Value Boolean)
  , "LambdaFunctionAssociations" :: Maybe (Value (Array LambdaFunctionAssociation))
  , "TrustedSigners" :: Maybe (Value (Array String))
  , "DefaultTTL" :: Maybe (Value Number)
  , "FieldLevelEncryptionId" :: Maybe (Value String)
  , "AllowedMethods" :: Maybe (Value (Array String))
  , "CachedMethods" :: Maybe (Value (Array String))
  , "SmoothStreaming" :: Maybe (Value Boolean)
  , "MinTTL" :: Maybe (Value Number)
  , "MaxTTL" :: Maybe (Value Number)
  }

cacheBehavior :: { "TargetOriginId" :: Value String, "ViewerProtocolPolicy" :: Value String, "PathPattern" :: Value String, "ForwardedValues" :: Value ForwardedValues } -> CacheBehavior
cacheBehavior required =
  (merge required
    { "Compress" : Nothing
    , "LambdaFunctionAssociations" : Nothing
    , "TrustedSigners" : Nothing
    , "DefaultTTL" : Nothing
    , "FieldLevelEncryptionId" : Nothing
    , "AllowedMethods" : Nothing
    , "CachedMethods" : Nothing
    , "SmoothStreaming" : Nothing
    , "MinTTL" : Nothing
    , "MaxTTL" : Nothing
    })

-- | `AWS::CloudFront::Distribution.LambdaFunctionAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html
-- |
-- | - `EventType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-eventtype
-- | - `LambdaFunctionARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-lambdafunctionarn
type LambdaFunctionAssociation =
  { "EventType" :: Maybe (Value String)
  , "LambdaFunctionARN" :: Maybe (Value String)
  }

lambdaFunctionAssociation :: LambdaFunctionAssociation
lambdaFunctionAssociation =
  { "EventType" : Nothing
  , "LambdaFunctionARN" : Nothing
  }

-- | `AWS::CloudFront::Distribution.Cookies`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html
-- |
-- | - `WhitelistedNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-whitelistednames
-- | - `Forward`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-forward
type Cookies =
  { "Forward" :: Value String
  , "WhitelistedNames" :: Maybe (Value (Array String))
  }

cookies :: { "Forward" :: Value String } -> Cookies
cookies required =
  (merge required
    { "WhitelistedNames" : Nothing
    })