module CloudFormation.AWS.CloudFront.StreamingDistribution where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "StreamingDistributionConfig" :: Value StreamingDistributionConfig
  , "Tags" :: Value (Array Tag)
  }

derive instance newtypeStreamingDistribution :: Newtype StreamingDistribution _
derive newtype instance writeStreamingDistribution :: WriteForeign StreamingDistribution
instance resourceStreamingDistribution :: Resource StreamingDistribution where type_ _ = "AWS::CloudFront::StreamingDistribution"

streamingDistribution :: { "StreamingDistributionConfig" :: Value StreamingDistributionConfig, "Tags" :: Value (Array Tag) } -> StreamingDistribution
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
  { "Comment" :: Value String
  , "S3Origin" :: Value S3Origin
  , "Enabled" :: Value Boolean
  , "TrustedSigners" :: Value TrustedSigners
  , "Logging" :: Maybe (Value Logging)
  , "PriceClass" :: Maybe (Value String)
  , "Aliases" :: Maybe (Value (Array String))
  }

streamingDistributionConfig :: { "Comment" :: Value String, "S3Origin" :: Value S3Origin, "Enabled" :: Value Boolean, "TrustedSigners" :: Value TrustedSigners } -> StreamingDistributionConfig
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
  { "Bucket" :: Value String
  , "Enabled" :: Value Boolean
  , "Prefix" :: Value String
  }

logging :: { "Bucket" :: Value String, "Enabled" :: Value Boolean, "Prefix" :: Value String } -> Logging
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
  { "DomainName" :: Value String
  , "OriginAccessIdentity" :: Value String
  }

s3Origin :: { "DomainName" :: Value String, "OriginAccessIdentity" :: Value String } -> S3Origin
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
  { "Enabled" :: Value Boolean
  , "AwsAccountNumbers" :: Maybe (Value (Array String))
  }

trustedSigners :: { "Enabled" :: Value Boolean } -> TrustedSigners
trustedSigners required =
  (merge required
    { "AwsAccountNumbers" : Nothing
    })