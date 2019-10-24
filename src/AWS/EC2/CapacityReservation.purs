module AWS.EC2.CapacityReservation where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Tag


type CapacityReservation =
  { "InstanceCount" :: Int
  , "AvailabilityZone" :: String
  , "InstancePlatform" :: String
  , "InstanceType" :: String
  , "Tenancy" :: Maybe String
  , "EndDateType" :: Maybe String
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "EphemeralStorage" :: Maybe Boolean
  , "InstanceMatchCriteria" :: Maybe String
  , "EndDate" :: Maybe String
  , "EbsOptimized" :: Maybe Boolean
  }

capacityReservation :: { "InstanceCount" :: Int, "AvailabilityZone" :: String, "InstancePlatform" :: String, "InstanceType" :: String } -> CapacityReservation
capacityReservation required =
  merge required
    { "Tenancy" : Nothing
    , "EndDateType" : Nothing
    , "TagSpecifications" : Nothing
    , "EphemeralStorage" : Nothing
    , "InstanceMatchCriteria" : Nothing
    , "EndDate" : Nothing
    , "EbsOptimized" : Nothing
    }

type TagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }