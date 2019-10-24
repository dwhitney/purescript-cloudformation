module CloudFormation.AWS.IoTAnalytics.Datastore where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Record (merge)


-- | `AWS::IoTAnalytics::Datastore`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html
-- |
-- | - `DatastoreStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorestorage
-- | - `DatastoreName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorename
-- | - `RetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-retentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-tags
newtype Datastore = Datastore
  { "DatastoreStorage" :: Maybe DatastoreStorage
  , "DatastoreName" :: Maybe String
  , "RetentionPeriod" :: Maybe RetentionPeriod
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDatastore :: Newtype Datastore _
instance resourceDatastore :: Resource Datastore where type_ _ = "AWS::IoTAnalytics::Datastore"

datastore :: Datastore
datastore = Datastore
  { "DatastoreStorage" : Nothing
  , "DatastoreName" : Nothing
  , "RetentionPeriod" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::IoTAnalytics::Datastore.CustomerManagedS3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-bucket
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-rolearn
-- | - `KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-keyprefix
type CustomerManagedS3 =
  { "Bucket" :: String
  , "RoleArn" :: String
  , "KeyPrefix" :: Maybe String
  }

customerManagedS3 :: { "Bucket" :: String, "RoleArn" :: String } -> CustomerManagedS3
customerManagedS3 required =
  (merge required
    { "KeyPrefix" : Nothing
    })

-- | `AWS::IoTAnalytics::Datastore.RetentionPeriod`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html
-- |
-- | - `NumberOfDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-numberofdays
-- | - `Unlimited`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-unlimited
type RetentionPeriod =
  { "NumberOfDays" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

retentionPeriod :: RetentionPeriod
retentionPeriod =
  { "NumberOfDays" : Nothing
  , "Unlimited" : Nothing
  }

-- | `AWS::IoTAnalytics::Datastore.ServiceManagedS3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-servicemanageds3.html
-- |

type ServiceManagedS3 =
  { 
  }

serviceManagedS3 :: ServiceManagedS3
serviceManagedS3 = {}

-- | `AWS::IoTAnalytics::Datastore.DatastoreStorage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html
-- |
-- | - `CustomerManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-customermanageds3
-- | - `ServiceManagedS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-servicemanageds3
type DatastoreStorage =
  { "CustomerManagedS3" :: Maybe CustomerManagedS3
  , "ServiceManagedS3" :: Maybe ServiceManagedS3
  }

datastoreStorage :: DatastoreStorage
datastoreStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }