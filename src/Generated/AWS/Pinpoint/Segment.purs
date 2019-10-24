module CloudFormation.AWS.Pinpoint.Segment where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::Pinpoint::Segment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html
-- |
-- | - `SegmentGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-segmentgroups
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-dimensions
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-applicationid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-name
type Segment =
  { "ApplicationId" :: String
  , "Name" :: String
  , "SegmentGroups" :: Maybe SegmentGroups
  , "Dimensions" :: Maybe SegmentDimensions
  , "Tags" :: Maybe Json
  }

segment :: { "ApplicationId" :: String, "Name" :: String } -> Segment
segment required =
  merge required
    { "SegmentGroups" : Nothing
    , "Dimensions" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::Pinpoint::Segment.SegmentGroups`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html
-- |
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-groups
-- | - `Include`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-include
type SegmentGroups =
  { "Groups" :: Maybe (Array Groups)
  , "Include" :: Maybe String
  }

segmentGroups :: SegmentGroups
segmentGroups =
  { "Groups" : Nothing
  , "Include" : Nothing
  }

-- | `AWS::Pinpoint::Segment.Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html
-- |
-- | - `GPSPoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint
-- | - `Country`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location.html#cfn-pinpoint-segment-segmentdimensions-location-country
type Location =
  { "GPSPoint" :: Maybe GPSPoint
  , "Country" :: Maybe SetDimension
  }

location :: Location
location =
  { "GPSPoint" : Nothing
  , "Country" : Nothing
  }

-- | `AWS::Pinpoint::Segment.Behavior`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html
-- |
-- | - `Recency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency
type Behavior =
  { "Recency" :: Maybe Recency
  }

behavior :: Behavior
behavior =
  { "Recency" : Nothing
  }

-- | `AWS::Pinpoint::Segment.Groups`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-type
-- | - `SourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcetype
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-dimensions
-- | - `SourceSegments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments
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

-- | `AWS::Pinpoint::Segment.SetDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html
-- |
-- | - `DimensionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html#cfn-pinpoint-segment-setdimension-dimensiontype
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-setdimension.html#cfn-pinpoint-segment-setdimension-values
type SetDimension =
  { "DimensionType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

setDimension :: SetDimension
setDimension =
  { "DimensionType" : Nothing
  , "Values" : Nothing
  }

-- | `AWS::Pinpoint::Segment.Recency`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html
-- |
-- | - `Duration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-duration
-- | - `RecencyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-recencytype
type Recency =
  { "Duration" :: String
  , "RecencyType" :: String
  }

recency :: { "Duration" :: String, "RecencyType" :: String } -> Recency
recency required =
  required

-- | `AWS::Pinpoint::Segment.Demographic`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html
-- |
-- | - `AppVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-appversion
-- | - `DeviceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-devicetype
-- | - `Platform`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-platform
-- | - `Channel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-channel
-- | - `Model`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-model
-- | - `Make`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-make
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

-- | `AWS::Pinpoint::Segment.GPSPoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html
-- |
-- | - `RangeInKilometers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-rangeinkilometers
-- | - `Coordinates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates
type GPSPoint =
  { "RangeInKilometers" :: Number
  , "Coordinates" :: Coordinates
  }

gpspPSPoint :: { "RangeInKilometers" :: Number, "Coordinates" :: Coordinates } -> GPSPoint
gpspPSPoint required =
  required

-- | `AWS::Pinpoint::Segment.AttributeDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html
-- |
-- | - `AttributeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-attributetype
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-values
type AttributeDimension =
  { "AttributeType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

attributeDimension :: AttributeDimension
attributeDimension =
  { "AttributeType" : Nothing
  , "Values" : Nothing
  }

-- | `AWS::Pinpoint::Segment.SourceSegments`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-id
type SourceSegments =
  { "Id" :: String
  , "Version" :: Maybe Int
  }

sourceSegments :: { "Id" :: String } -> SourceSegments
sourceSegments required =
  merge required
    { "Version" : Nothing
    }

-- | `AWS::Pinpoint::Segment.SegmentDimensions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html
-- |
-- | - `Demographic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-demographic
-- | - `Metrics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-metrics
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-attributes
-- | - `Behavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-behavior
-- | - `UserAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-userattributes
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-location
type SegmentDimensions =
  { "Demographic" :: Maybe Demographic
  , "Metrics" :: Maybe Json
  , "Attributes" :: Maybe Json
  , "Behavior" :: Maybe Behavior
  , "UserAttributes" :: Maybe Json
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

-- | `AWS::Pinpoint::Segment.Coordinates`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html
-- |
-- | - `Latitude`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-latitude
-- | - `Longitude`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates-longitude
type Coordinates =
  { "Latitude" :: Number
  , "Longitude" :: Number
  }

coordinates :: { "Latitude" :: Number, "Longitude" :: Number } -> Coordinates
coordinates required =
  required