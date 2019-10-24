module AWS.Pinpoint.Segment where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Segment =
  { "ApplicationId" :: String
  , "Name" :: String
  , "SegmentGroups" :: Maybe SegmentGroups
  , "Dimensions" :: Maybe SegmentDimensions
  , "Tags" :: Maybe Foreign
  }

segment :: { "ApplicationId" :: String, "Name" :: String } -> Segment
segment required =
  merge required
    { "SegmentGroups" : Nothing
    , "Dimensions" : Nothing
    , "Tags" : Nothing
    }

type SegmentGroups =
  { "Groups" :: Maybe (Array Groups)
  , "Include" :: Maybe String
  }

segmentGroups :: SegmentGroups
segmentGroups =
  { "Groups" : Nothing
  , "Include" : Nothing
  }

type Location =
  { "GPSPoint" :: Maybe GPSPoint
  , "Country" :: Maybe SetDimension
  }

location :: Location
location =
  { "GPSPoint" : Nothing
  , "Country" : Nothing
  }

type Behavior =
  { "Recency" :: Maybe Recency
  }

behavior :: Behavior
behavior =
  { "Recency" : Nothing
  }

type Groups =
  { "Type" :: Maybe String
  , "SourceType" :: Maybe String
  , "Dimensions" :: Maybe (Array SegmentDimensions)
  , "SourceSegments" :: Maybe (Array SourceSegments)
  }

groups :: Groups
groups =
  { "Type" : Nothing
  , "SourceType" : Nothing
  , "Dimensions" : Nothing
  , "SourceSegments" : Nothing
  }

type SetDimension =
  { "DimensionType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

setDimension :: SetDimension
setDimension =
  { "DimensionType" : Nothing
  , "Values" : Nothing
  }

type Recency =
  { "Duration" :: String
  , "RecencyType" :: String
  }

recency :: { "Duration" :: String, "RecencyType" :: String } -> Recency
recency required =
  required

type Demographic =
  { "AppVersion" :: Maybe SetDimension
  , "DeviceType" :: Maybe SetDimension
  , "Platform" :: Maybe SetDimension
  , "Channel" :: Maybe SetDimension
  , "Model" :: Maybe SetDimension
  , "Make" :: Maybe SetDimension
  }

demographic :: Demographic
demographic =
  { "AppVersion" : Nothing
  , "DeviceType" : Nothing
  , "Platform" : Nothing
  , "Channel" : Nothing
  , "Model" : Nothing
  , "Make" : Nothing
  }

type GPSPoint =
  { "RangeInKilometers" :: Number
  , "Coordinates" :: Coordinates
  }

gpspPSPoint :: { "RangeInKilometers" :: Number, "Coordinates" :: Coordinates } -> GPSPoint
gpspPSPoint required =
  required

type AttributeDimension =
  { "AttributeType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

attributeDimension :: AttributeDimension
attributeDimension =
  { "AttributeType" : Nothing
  , "Values" : Nothing
  }

type SourceSegments =
  { "Id" :: String
  , "Version" :: Maybe Int
  }

sourceSegments :: { "Id" :: String } -> SourceSegments
sourceSegments required =
  merge required
    { "Version" : Nothing
    }

type SegmentDimensions =
  { "Demographic" :: Maybe Demographic
  , "Metrics" :: Maybe Foreign
  , "Attributes" :: Maybe Foreign
  , "Behavior" :: Maybe Behavior
  , "UserAttributes" :: Maybe Foreign
  , "Location" :: Maybe Location
  }

segmentDimensions :: SegmentDimensions
segmentDimensions =
  { "Demographic" : Nothing
  , "Metrics" : Nothing
  , "Attributes" : Nothing
  , "Behavior" : Nothing
  , "UserAttributes" : Nothing
  , "Location" : Nothing
  }

type Coordinates =
  { "Latitude" :: Number
  , "Longitude" :: Number
  }

coordinates :: { "Latitude" :: Number, "Longitude" :: Number } -> Coordinates
coordinates required =
  required