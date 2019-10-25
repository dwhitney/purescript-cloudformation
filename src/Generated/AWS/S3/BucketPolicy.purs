module CloudFormation.AWS.S3.BucketPolicy where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::S3::BucketPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-bucket
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-policydocument
newtype BucketPolicy = BucketPolicy
  { "Bucket" :: Value String
  , "PolicyDocument" :: Value CF.Json
  }

derive instance newtypeBucketPolicy :: Newtype BucketPolicy _
derive newtype instance writeBucketPolicy :: WriteForeign BucketPolicy
instance resourceBucketPolicy :: Resource BucketPolicy where type_ _ = "AWS::S3::BucketPolicy"

bucketPolicy :: { "Bucket" :: Value String, "PolicyDocument" :: Value CF.Json } -> BucketPolicy
bucketPolicy required = BucketPolicy
  required