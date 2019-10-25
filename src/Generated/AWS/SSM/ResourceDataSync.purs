module CloudFormation.AWS.SSM.ResourceDataSync where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "BucketName" :: Value String
  , "BucketRegion" :: Value String
  , "SyncFormat" :: Value String
  , "SyncName" :: Value String
  , "KMSKeyArn" :: Maybe (Value String)
  , "BucketPrefix" :: Maybe (Value String)
  }

derive instance newtypeResourceDataSync :: Newtype ResourceDataSync _
derive newtype instance writeResourceDataSync :: WriteForeign ResourceDataSync
instance resourceResourceDataSync :: Resource ResourceDataSync where type_ _ = "AWS::SSM::ResourceDataSync"

resourceDataSync :: { "BucketName" :: Value String, "BucketRegion" :: Value String, "SyncFormat" :: Value String, "SyncName" :: Value String } -> ResourceDataSync
resourceDataSync required = ResourceDataSync
  (merge required
    { "KMSKeyArn" : Nothing
    , "BucketPrefix" : Nothing
    })