module CloudFormation.AWS.S3.BucketPolicy where 

import Foreign (Foreign)


type BucketPolicy =
  { "Bucket" :: String
  , "PolicyDocument" :: Foreign
  }

bucketPolicy :: { "Bucket" :: String, "PolicyDocument" :: Foreign } -> BucketPolicy
bucketPolicy required =
  required