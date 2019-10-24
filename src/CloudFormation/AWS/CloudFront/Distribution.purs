module CloudFormation.AWS.CloudFront.Distribution where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudFront::Distribution`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html-- |
-- | - `DistributionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-distributionconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-tags
type Distribution =
  { "DistributionConfig" :: DistributionConfig
  , "Tags" :: Maybe (Array Tag)
  }

distribution :: { "DistributionConfig" :: DistributionConfig } -> Distribution
distribution required =
  merge required
    { "Tags" : Nothing
    }

-- | `AWS::CloudFront::Distribution.Logging`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html-- |
-- | - `IncludeCookies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-includecookies
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-bucket
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-prefix
type Logging =
  { "Bucket" :: String
  , "IncludeCookies" :: Maybe Boolean
  , "Prefix" :: Maybe String
  }

logging :: { "Bucket" :: String } -> Logging
logging required =
  merge required
    { "IncludeCookies" : Nothing
    , "Prefix" : Nothing
    }

-- | `AWS::CloudFront::Distribution.CustomErrorResponse`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html-- |
-- | - `ResponseCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsecode
-- | - `ErrorCachingMinTTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcachingminttl
-- | - `ErrorCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcode
-- | - `ResponsePagePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsepagepath
type CustomErrorResponse =
  { "ErrorCode" :: Int
  , "ResponseCode" :: Maybe Int
  , "ErrorCachingMinTTL" :: Maybe Number
  , "ResponsePagePath" :: Maybe String
  }

customErrorResponse :: { "ErrorCode" :: Int } -> CustomErrorResponse
customErrorResponse required =
  merge required
    { "ResponseCode" : Nothing
    , "ErrorCachingMinTTL" : Nothing
    , "ResponsePagePath" : Nothing
    }

-- | `AWS::CloudFront::Distribution.S3OriginConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html-- |
-- | - `OriginAccessIdentity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html#cfn-cloudfront-distribution-s3originconfig-originaccessidentity
type S3OriginConfig =
  { "OriginAccessIdentity" :: Maybe String
  }

s3OriginConfig :: S3OriginConfig
s3OriginConfig =
  { "OriginAccessIdentity" : Nothing
  }

-- | `AWS::CloudFront::Distribution.ViewerCertificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html-- |
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
  { "IamCertificateId" :: Maybe String
  , "SslSupportMethod" :: Maybe String
  , "MinimumProtocolVersion" :: Maybe String
  , "CloudFrontDefaultCertificate" :: Maybe Boolean
  , "AcmCertificateArn" :: Maybe String
  }

viewerCertificate :: ViewerCertificate
viewerCertificate =
  { "IamCertificateId" : Nothing
  , "SslSupportMethod" : Nothing
  , "MinimumProtocolVersion" : Nothing
  , "CloudFrontDefaultCertificate" : Nothing
  , "AcmCertificateArn" : Nothing
  }

-- | `AWS::CloudFront::Distribution.GeoRestriction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html-- |
-- | - `Locations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-locations
-- | - `RestrictionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-restrictiontype
type GeoRestriction =
  { "RestrictionType" :: String
  , "Locations" :: Maybe (Array String)
  }

geoRestriction :: { "RestrictionType" :: String } -> GeoRestriction
geoRestriction required =
  merge required
    { "Locations" : Nothing
    }

-- | `AWS::CloudFront::Distribution.ForwardedValues`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html-- |
-- | - `Cookies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies
-- | - `Headers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers
-- | - `QueryString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring
-- | - `QueryStringCacheKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys
type ForwardedValues =
  { "QueryString" :: Boolean
  , "Cookies" :: Maybe Cookies
  , "Headers" :: Maybe (Array String)
  , "QueryStringCacheKeys" :: Maybe (Array String)
  }

forwardedValues :: { "QueryString" :: Boolean } -> ForwardedValues
forwardedValues required =
  merge required
    { "Cookies" : Nothing
    , "Headers" : Nothing
    , "QueryStringCacheKeys" : Nothing
    }

-- | `AWS::CloudFront::Distribution.CustomOriginConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html-- |
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
  { "OriginProtocolPolicy" :: String
  , "OriginReadTimeout" :: Maybe Int
  , "HTTPSPort" :: Maybe Int
  , "OriginKeepaliveTimeout" :: Maybe Int
  , "OriginSSLProtocols" :: Maybe (Array String)
  , "HTTPPort" :: Maybe Int
  }

customOriginConfig :: { "OriginProtocolPolicy" :: String } -> CustomOriginConfig
customOriginConfig required =
  merge required
    { "OriginReadTimeout" : Nothing
    , "HTTPSPort" : Nothing
    , "OriginKeepaliveTimeout" : Nothing
    , "OriginSSLProtocols" : Nothing
    , "HTTPPort" : Nothing
    }

-- | `AWS::CloudFront::Distribution.OriginCustomHeader`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html-- |
-- | - `HeaderValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headervalue
-- | - `HeaderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headername
type OriginCustomHeader =
  { "HeaderValue" :: String
  , "HeaderName" :: String
  }

originCustomHeader :: { "HeaderValue" :: String, "HeaderName" :: String } -> OriginCustomHeader
originCustomHeader required =
  required

-- | `AWS::CloudFront::Distribution.DistributionConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html-- |
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
  { "Enabled" :: Boolean
  , "Logging" :: Maybe Logging
  , "Comment" :: Maybe String
  , "DefaultRootObject" :: Maybe String
  , "Origins" :: Maybe (Array Origin)
  , "ViewerCertificate" :: Maybe ViewerCertificate
  , "PriceClass" :: Maybe String
  , "DefaultCacheBehavior" :: Maybe DefaultCacheBehavior
  , "CustomErrorResponses" :: Maybe (Array CustomErrorResponse)
  , "Aliases" :: Maybe (Array String)
  , "IPV6Enabled" :: Maybe Boolean
  , "WebACLId" :: Maybe String
  , "HttpVersion" :: Maybe String
  , "Restrictions" :: Maybe Restrictions
  , "CacheBehaviors" :: Maybe (Array CacheBehavior)
  }

distributionConfig :: { "Enabled" :: Boolean } -> DistributionConfig
distributionConfig required =
  merge required
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
    }

-- | `AWS::CloudFront::Distribution.Origin`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origin.html-- |
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
  { "DomainName" :: String
  , "Id" :: String
  , "OriginCustomHeaders" :: Maybe (Array OriginCustomHeader)
  , "S3OriginConfig" :: Maybe S3OriginConfig
  , "OriginPath" :: Maybe String
  , "CustomOriginConfig" :: Maybe CustomOriginConfig
  }

origin :: { "DomainName" :: String, "Id" :: String } -> Origin
origin required =
  merge required
    { "OriginCustomHeaders" : Nothing
    , "S3OriginConfig" : Nothing
    , "OriginPath" : Nothing
    , "CustomOriginConfig" : Nothing
    }

-- | `AWS::CloudFront::Distribution.Restrictions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html-- |
-- | - `GeoRestriction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html#cfn-cloudfront-distribution-restrictions-georestriction
type Restrictions =
  { "GeoRestriction" :: GeoRestriction
  }

restrictions :: { "GeoRestriction" :: GeoRestriction } -> Restrictions
restrictions required =
  required

-- | `AWS::CloudFront::Distribution.DefaultCacheBehavior`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html-- |
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
  { "TargetOriginId" :: String
  , "ViewerProtocolPolicy" :: String
  , "ForwardedValues" :: ForwardedValues
  , "Compress" :: Maybe Boolean
  , "LambdaFunctionAssociations" :: Maybe (Array LambdaFunctionAssociation)
  , "TrustedSigners" :: Maybe (Array String)
  , "DefaultTTL" :: Maybe Number
  , "FieldLevelEncryptionId" :: Maybe String
  , "AllowedMethods" :: Maybe (Array String)
  , "CachedMethods" :: Maybe (Array String)
  , "SmoothStreaming" :: Maybe Boolean
  , "MinTTL" :: Maybe Number
  , "MaxTTL" :: Maybe Number
  }

defaultCacheBehavior :: { "TargetOriginId" :: String, "ViewerProtocolPolicy" :: String, "ForwardedValues" :: ForwardedValues } -> DefaultCacheBehavior
defaultCacheBehavior required =
  merge required
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
    }

-- | `AWS::CloudFront::Distribution.CacheBehavior`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html-- |
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
  { "TargetOriginId" :: String
  , "ViewerProtocolPolicy" :: String
  , "PathPattern" :: String
  , "ForwardedValues" :: ForwardedValues
  , "Compress" :: Maybe Boolean
  , "LambdaFunctionAssociations" :: Maybe (Array LambdaFunctionAssociation)
  , "TrustedSigners" :: Maybe (Array String)
  , "DefaultTTL" :: Maybe Number
  , "FieldLevelEncryptionId" :: Maybe String
  , "AllowedMethods" :: Maybe (Array String)
  , "CachedMethods" :: Maybe (Array String)
  , "SmoothStreaming" :: Maybe Boolean
  , "MinTTL" :: Maybe Number
  , "MaxTTL" :: Maybe Number
  }

cacheBehavior :: { "TargetOriginId" :: String, "ViewerProtocolPolicy" :: String, "PathPattern" :: String, "ForwardedValues" :: ForwardedValues } -> CacheBehavior
cacheBehavior required =
  merge required
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
    }

-- | `AWS::CloudFront::Distribution.LambdaFunctionAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html-- |
-- | - `EventType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-eventtype
-- | - `LambdaFunctionARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-lambdafunctionassociation.html#cfn-cloudfront-distribution-lambdafunctionassociation-lambdafunctionarn
type LambdaFunctionAssociation =
  { "EventType" :: Maybe String
  , "LambdaFunctionARN" :: Maybe String
  }

lambdaFunctionAssociation :: LambdaFunctionAssociation
lambdaFunctionAssociation =
  { "EventType" : Nothing
  , "LambdaFunctionARN" : Nothing
  }

-- | `AWS::CloudFront::Distribution.Cookies`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html-- |
-- | - `WhitelistedNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-whitelistednames
-- | - `Forward`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-forward
type Cookies =
  { "Forward" :: String
  , "WhitelistedNames" :: Maybe (Array String)
  }

cookies :: { "Forward" :: String } -> Cookies
cookies required =
  merge required
    { "WhitelistedNames" : Nothing
    }