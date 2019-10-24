module CloudFormation.AWS.S3.BucketPolicy where 

import CloudFormation (Json) as CF
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::S3::BucketPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-bucket
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-policydocument
newtype BucketPolicy = BucketPolicy
  { "Bucket" :: String
  , "PolicyDocument" :: CF.Json
  }

derive instance newtypeBucketPolicy :: Newtype BucketPolicy _
instance resourceBucketPolicy :: Resource BucketPolicy where type_ _ = "AWS::S3::BucketPolicy"

bucketPolicy :: { "Bucket" :: String, "PolicyDocument" :: CF.Json } -> BucketPolicy
bucketPolicy required = BucketPolicy
  required