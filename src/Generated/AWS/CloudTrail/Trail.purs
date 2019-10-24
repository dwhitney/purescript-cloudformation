module CloudFormation.AWS.CloudTrail.Trail where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "IsLogging" :: Boolean
  , "S3BucketName" :: String
  , "CloudWatchLogsLogGroupArn" :: Maybe String
  , "CloudWatchLogsRoleArn" :: Maybe String
  , "EnableLogFileValidation" :: Maybe Boolean
  , "EventSelectors" :: Maybe (Array EventSelector)
  , "IncludeGlobalServiceEvents" :: Maybe Boolean
  , "IsMultiRegionTrail" :: Maybe Boolean
  , "KMSKeyId" :: Maybe String
  , "S3KeyPrefix" :: Maybe String
  , "SnsTopicName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TrailName" :: Maybe String
  }

derive instance newtypeTrail :: Newtype Trail _
instance resourceTrail :: Resource Trail where type_ _ = "AWS::CloudTrail::Trail"

trail :: { "IsLogging" :: Boolean, "S3BucketName" :: String } -> Trail
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
  { "Type" :: String
  , "Values" :: Maybe (Array String)
  }

dataResource :: { "Type" :: String } -> DataResource
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
  { "DataResources" :: Maybe (Array DataResource)
  , "IncludeManagementEvents" :: Maybe Boolean
  , "ReadWriteType" :: Maybe String
  }

eventSelector :: EventSelector
eventSelector =
  { "DataResources" : Nothing
  , "IncludeManagementEvents" : Nothing
  , "ReadWriteType" : Nothing
  }