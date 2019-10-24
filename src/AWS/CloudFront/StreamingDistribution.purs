module AWS.CloudFront.StreamingDistribution where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type StreamingDistribution =
  { "StreamingDistributionConfig" :: StreamingDistributionConfig
  , "Tags" :: Array Tag
  }

streamingDistribution :: { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Tags" :: Array Tag } -> StreamingDistribution
streamingDistribution required =
  required

type StreamingDistributionConfig =
  { "Comment" :: String
  , "S3Origin" :: S3Origin
  , "Enabled" :: Boolean
  , "TrustedSigners" :: TrustedSigners
  , "Logging" :: Maybe Logging
  , "PriceClass" :: Maybe String
  , "Aliases" :: Maybe (Array String)
  }

streamingDistributionConfig :: { "Comment" :: String, "S3Origin" :: S3Origin, "Enabled" :: Boolean, "TrustedSigners" :: TrustedSigners } -> StreamingDistributionConfig
streamingDistributionConfig required =
  merge required
    { "Logging" : Nothing
    , "PriceClass" : Nothing
    , "Aliases" : Nothing
    }

type Logging =
  { "Bucket" :: String
  , "Enabled" :: Boolean
  , "Prefix" :: String
  }

logging :: { "Bucket" :: String, "Enabled" :: Boolean, "Prefix" :: String } -> Logging
logging required =
  required

type S3Origin =
  { "DomainName" :: String
  , "OriginAccessIdentity" :: String
  }

s3Origin :: { "DomainName" :: String, "OriginAccessIdentity" :: String } -> S3Origin
s3Origin required =
  required

type TrustedSigners =
  { "Enabled" :: Boolean
  , "AwsAccountNumbers" :: Maybe (Array String)
  }

trustedSigners :: { "Enabled" :: Boolean } -> TrustedSigners
trustedSigners required =
  merge required
    { "AwsAccountNumbers" : Nothing
    }