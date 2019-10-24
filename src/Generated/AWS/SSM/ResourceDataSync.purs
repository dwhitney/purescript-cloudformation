module CloudFormation.AWS.SSM.ResourceDataSync where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SSM::ResourceDataSync`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html
-- |
-- | - `KMSKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-kmskeyarn
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketname
-- | - `BucketRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketregion
-- | - `SyncFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncformat
-- | - `SyncName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncname
-- | - `BucketPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketprefix
newtype ResourceDataSync = ResourceDataSync
  { "BucketName" :: String
  , "BucketRegion" :: String
  , "SyncFormat" :: String
  , "SyncName" :: String
  , "KMSKeyArn" :: Maybe String
  , "BucketPrefix" :: Maybe String
  }

derive instance newtypeResourceDataSync :: Newtype ResourceDataSync _
instance resourceResourceDataSync :: Resource ResourceDataSync where type_ _ = "AWS::SSM::ResourceDataSync"

resourceDataSync :: { "BucketName" :: String, "BucketRegion" :: String, "SyncFormat" :: String, "SyncName" :: String } -> ResourceDataSync
resourceDataSync required = ResourceDataSync
  (merge required
    { "KMSKeyArn" : Nothing
    , "BucketPrefix" : Nothing
    })