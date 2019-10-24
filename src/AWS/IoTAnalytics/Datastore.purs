module AWS.IoTAnalytics.Datastore where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Datastore =
  { "DatastoreStorage" :: Maybe DatastoreStorage
  , "DatastoreName" :: Maybe String
  , "RetentionPeriod" :: Maybe RetentionPeriod
  , "Tags" :: Maybe (Array Tag)
  }

datastore :: Datastore
datastore =
  { "DatastoreStorage" : Nothing
  , "DatastoreName" : Nothing
  , "RetentionPeriod" : Nothing
  , "Tags" : Nothing
  }

type CustomerManagedS3 =
  { "Bucket" :: String
  , "RoleArn" :: String
  , "KeyPrefix" :: Maybe String
  }

customerManagedS3 :: { "Bucket" :: String, "RoleArn" :: String } -> CustomerManagedS3
customerManagedS3 required =
  merge required
    { "KeyPrefix" : Nothing
    }

type RetentionPeriod =
  { "NumberOfDays" :: Maybe Int
  , "Unlimited" :: Maybe Boolean
  }

retentionPeriod :: RetentionPeriod
retentionPeriod =
  { "NumberOfDays" : Nothing
  , "Unlimited" : Nothing
  }

type ServiceManagedS3 =
  { 
  }

serviceManagedS3 :: ServiceManagedS3
serviceManagedS3 = {}

type DatastoreStorage =
  { "CustomerManagedS3" :: Maybe CustomerManagedS3
  , "ServiceManagedS3" :: Maybe ServiceManagedS3
  }

datastoreStorage :: DatastoreStorage
datastoreStorage =
  { "CustomerManagedS3" : Nothing
  , "ServiceManagedS3" : Nothing
  }