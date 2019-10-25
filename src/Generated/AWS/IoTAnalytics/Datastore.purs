module CloudFormation.AWS.IoTAnalytics.Datastore where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "DatastoreStorage" :: Maybe (Value DatastoreStorage)
  , "DatastoreName" :: Maybe (Value String)
  , "RetentionPeriod" :: Maybe (Value RetentionPeriod)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDatastore :: Newtype Datastore _
derive newtype instance writeDatastore :: WriteForeign Datastore
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
  { "Bucket" :: Value String
  , "RoleArn" :: Value String
  , "KeyPrefix" :: Maybe (Value String)
  }

customerManagedS3 :: { "Bucket" :: Value String, "RoleArn" :: Value String } -> CustomerManagedS3
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
  { "NumberOfDays" :: Maybe (Value Int)
  , "Unlimited" :: Maybe (Value Boolean)
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
  { "CustomerManagedS3" :: Maybe (Value CustomerManagedS3)
  , "ServiceManagedS3" :: Maybe (Value ServiceManagedS3)
  }

datastoreStorage :: DatastoreStorage
datastoreStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }