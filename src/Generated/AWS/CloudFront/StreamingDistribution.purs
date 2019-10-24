module CloudFormation.AWS.CloudFront.StreamingDistribution where 

import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudFront::StreamingDistribution`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html
-- |
-- | - `StreamingDistributionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-tags
newtype StreamingDistribution = StreamingDistribution
  { "StreamingDistributionConfig" :: StreamingDistributionConfig
  , "Tags" :: Array Tag
  }

derive instance newtypeStreamingDistribution :: Newtype StreamingDistribution _
instance resourceStreamingDistribution :: Resource StreamingDistribution where type_ _ = "AWS::CloudFront::StreamingDistribution"

streamingDistribution :: { "StreamingDistributionConfig" :: StreamingDistributionConfig, "Tags" :: Array Tag } -> StreamingDistribution
streamingDistribution required = StreamingDistribution
  required

-- | `AWS::CloudFront::StreamingDistribution.StreamingDistributionConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html
-- |
-- | - `Logging`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-logging
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-comment
-- | - `PriceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-priceclass
-- | - `S3Origin`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-s3origin
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-enabled
-- | - `Aliases`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-aliases
-- | - `TrustedSigners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-trustedsigners
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
  (merge required
    { "Logging" : Nothing
    , "PriceClass" : Nothing
    , "Aliases" : Nothing
    })

-- | `AWS::CloudFront::StreamingDistribution.Logging`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-bucket
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-enabled
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-prefix
type Logging =
  { "Bucket" :: String
  , "Enabled" :: Boolean
  , "Prefix" :: String
  }

logging :: { "Bucket" :: String, "Enabled" :: Boolean, "Prefix" :: String } -> Logging
logging required =
  required

-- | `AWS::CloudFront::StreamingDistribution.S3Origin`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-domainname
-- | - `OriginAccessIdentity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-originaccessidentity
type S3Origin =
  { "DomainName" :: String
  , "OriginAccessIdentity" :: String
  }

s3Origin :: { "DomainName" :: String, "OriginAccessIdentity" :: String } -> S3Origin
s3Origin required =
  required

-- | `AWS::CloudFront::StreamingDistribution.TrustedSigners`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled
-- | - `AwsAccountNumbers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-awsaccountnumbers
type TrustedSigners =
  { "Enabled" :: Boolean
  , "AwsAccountNumbers" :: Maybe (Array String)
  }

trustedSigners :: { "Enabled" :: Boolean } -> TrustedSigners
trustedSigners required =
  (merge required
    { "AwsAccountNumbers" : Nothing
    })