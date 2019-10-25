module CloudFormation.AWS.CloudTrail.Trail where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudTrail::Trail`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html
-- |
-- | - `CloudWatchLogsLogGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsloggrouparn
-- | - `CloudWatchLogsRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsrolearn
-- | - `EnableLogFileValidation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-enablelogfilevalidation
-- | - `EventSelectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-eventselectors
-- | - `IncludeGlobalServiceEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-includeglobalserviceevents
-- | - `IsLogging`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-islogging
-- | - `IsMultiRegionTrail`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-ismultiregiontrail
-- | - `KMSKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-kmskeyid
-- | - `S3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3bucketname
-- | - `S3KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3keyprefix
-- | - `SnsTopicName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-snstopicname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-tags
-- | - `TrailName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-trailname
newtype Trail = Trail
  { "IsLogging" :: Value Boolean
  , "S3BucketName" :: Value String
  , "CloudWatchLogsLogGroupArn" :: Maybe (Value String)
  , "CloudWatchLogsRoleArn" :: Maybe (Value String)
  , "EnableLogFileValidation" :: Maybe (Value Boolean)
  , "EventSelectors" :: Maybe (Value (Array EventSelector))
  , "IncludeGlobalServiceEvents" :: Maybe (Value Boolean)
  , "IsMultiRegionTrail" :: Maybe (Value Boolean)
  , "KMSKeyId" :: Maybe (Value String)
  , "S3KeyPrefix" :: Maybe (Value String)
  , "SnsTopicName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "TrailName" :: Maybe (Value String)
  }

derive instance newtypeTrail :: Newtype Trail _
derive newtype instance writeTrail :: WriteForeign Trail
instance resourceTrail :: Resource Trail where type_ _ = "AWS::CloudTrail::Trail"

trail :: { "IsLogging" :: Value Boolean, "S3BucketName" :: Value String } -> Trail
trail required = Trail
  (merge required
    { "CloudWatchLogsLogGroupArn" : Nothing
    , "CloudWatchLogsRoleArn" : Nothing
    , "EnableLogFileValidation" : Nothing
    , "EventSelectors" : Nothing
    , "IncludeGlobalServiceEvents" : Nothing
    , "IsMultiRegionTrail" : Nothing
    , "KMSKeyId" : Nothing
    , "S3KeyPrefix" : Nothing
    , "SnsTopicName" : Nothing
    , "Tags" : Nothing
    , "TrailName" : Nothing
    })

-- | `AWS::CloudTrail::Trail.DataResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values
type DataResource =
  { "Type" :: Value String
  , "Values" :: Maybe (Value (Array String))
  }

dataResource :: { "Type" :: Value String } -> DataResource
dataResource required =
  (merge required
    { "Values" : Nothing
    })

-- | `AWS::CloudTrail::Trail.EventSelector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html
-- |
-- | - `DataResources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-dataresources
-- | - `IncludeManagementEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-includemanagementevents
-- | - `ReadWriteType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-readwritetype
type EventSelector =
  { "DataResources" :: Maybe (Value (Array DataResource))
  , "IncludeManagementEvents" :: Maybe (Value Boolean)
  , "ReadWriteType" :: Maybe (Value String)
  }

eventSelector :: EventSelector
eventSelector =
  { "DataResources" : Nothing
  , "IncludeManagementEvents" : Nothing
  , "ReadWriteType" : Nothing
  }