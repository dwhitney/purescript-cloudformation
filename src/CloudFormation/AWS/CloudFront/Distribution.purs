module CloudFormation.AWS.CloudFront.Distribution where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type Distribution =
  { "DistributionConfig" :: DistributionConfig
  , "Tags" :: Maybe (Array Tag)
  }

distribution :: { "DistributionConfig" :: DistributionConfig } -> Distribution
distribution required =
  merge required
    { "Tags" : Nothing
    }

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

type S3OriginConfig =
  { "OriginAccessIdentity" :: Maybe String
  }

s3OriginConfig :: S3OriginConfig
s3OriginConfig =
  { "OriginAccessIdentity" : Nothing
  }

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

type GeoRestriction =
  { "RestrictionType" :: String
  , "Locations" :: Maybe (Array String)
  }

geoRestriction :: { "RestrictionType" :: String } -> GeoRestriction
geoRestriction required =
  merge required
    { "Locations" : Nothing
    }

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

type OriginCustomHeader =
  { "HeaderValue" :: String
  , "HeaderName" :: String
  }

originCustomHeader :: { "HeaderValue" :: String, "HeaderName" :: String } -> OriginCustomHeader
originCustomHeader required =
  required

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

type Restrictions =
  { "GeoRestriction" :: GeoRestriction
  }

restrictions :: { "GeoRestriction" :: GeoRestriction } -> Restrictions
restrictions required =
  required

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

type LambdaFunctionAssociation =
  { "EventType" :: Maybe String
  , "LambdaFunctionARN" :: Maybe String
  }

lambdaFunctionAssociation :: LambdaFunctionAssociation
lambdaFunctionAssociation =
  { "EventType" : Nothing
  , "LambdaFunctionARN" : Nothing
  }

type Cookies =
  { "Forward" :: String
  , "WhitelistedNames" :: Maybe (Array String)
  }

cookies :: { "Forward" :: String } -> Cookies
cookies required =
  merge required
    { "WhitelistedNames" : Nothing
    }