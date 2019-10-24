module CloudFormation.AWS.S3.BucketPolicy where 

import CloudFormation (Json)


-- | `AWS::S3::BucketPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-bucket
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-policydocument
type BucketPolicy =
  { "Bucket" :: String
  , "PolicyDocument" :: Json
  }

bucketPolicy :: { "Bucket" :: String, "PolicyDocument" :: Json } -> BucketPolicy
bucketPolicy required =
  required