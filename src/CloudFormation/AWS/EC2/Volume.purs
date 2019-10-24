module CloudFormation.AWS.EC2.Volume where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Volume =
  { "AvailabilityZone" :: String
  , "AutoEnableIO" :: Maybe Boolean
  , "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "KmsKeyId" :: Maybe String
  , "Size" :: Maybe Int
  , "SnapshotId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "VolumeType" :: Maybe String
  }

volume :: { "AvailabilityZone" :: String } -> Volume
volume required =
  merge required
    { "AutoEnableIO" : Nothing
    , "Encrypted" : Nothing
    , "Iops" : Nothing
    , "KmsKeyId" : Nothing
    , "Size" : Nothing
    , "SnapshotId" : Nothing
    , "Tags" : Nothing
    , "VolumeType" : Nothing
    }