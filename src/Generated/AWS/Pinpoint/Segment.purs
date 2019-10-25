module CloudFormation.AWS.Pinpoint.Segment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Segment = Segment
  { "ApplicationId" :: Value String
  , "Name" :: Value String
  , "SegmentGroups" :: Maybe (Value SegmentGroups)
  , "Dimensions" :: Maybe (Value SegmentDimensions)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeSegment :: Newtype Segment _
derive newtype instance writeSegment :: WriteForeign Segment
instance resourceSegment :: Resource Segment where type_ _ = "AWS::Pinpoint::Segment"

segment :: { "ApplicationId" :: Value String, "Name" :: Value String } -> Segment
segment required = Segment
  (merge required
    { "SegmentGroups" : Nothing
    , "Dimensions" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Pinpoint::Segment.SegmentGroups`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html
-- |
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-groups
-- | - `Include`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-include
type SegmentGroups =
  { "Groups" :: Maybe (Value (Array Groups))
  , "Include" :: Maybe (Value String)
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
  { "GPSPoint" :: Maybe (Value GPSPoint)
  , "Country" :: Maybe (Value SetDimension)
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
  { "Recency" :: Maybe (Value Recency)
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
  { "Type" :: Maybe (Value String)
  , "SourceType" :: Maybe (Value String)
  , "Dimensions" :: Maybe (Value (Array SegmentDimensions))
  , "SourceSegments" :: Maybe (Value (Array SourceSegments))
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
  { "DimensionType" :: Maybe (Value String)
  , "Values" :: Maybe (Value (Array String))
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
  { "Duration" :: Value String
  , "RecencyType" :: Value String
  }

recency :: { "Duration" :: Value String, "RecencyType" :: Value String } -> Recency
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
  { "AppVersion" :: Maybe (Value SetDimension)
  , "DeviceType" :: Maybe (Value SetDimension)
  , "Platform" :: Maybe (Value SetDimension)
  , "Channel" :: Maybe (Value SetDimension)
  , "Model" :: Maybe (Value SetDimension)
  , "Make" :: Maybe (Value SetDimension)
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
  { "RangeInKilometers" :: Value Number
  , "Coordinates" :: Value Coordinates
  }

gpspPSPoint :: { "RangeInKilometers" :: Value Number, "Coordinates" :: Value Coordinates } -> GPSPoint
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
  { "AttributeType" :: Maybe (Value String)
  , "Values" :: Maybe (Value (Array String))
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
  { "Id" :: Value String
  , "Version" :: Maybe (Value Int)
  }

sourceSegments :: { "Id" :: Value String } -> SourceSegments
sourceSegments required =
  (merge required
    { "Version" : Nothing
    })

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
  { "Demographic" :: Maybe (Value Demographic)
  , "Metrics" :: Maybe (Value CF.Json)
  , "Attributes" :: Maybe (Value CF.Json)
  , "Behavior" :: Maybe (Value Behavior)
  , "UserAttributes" :: Maybe (Value CF.Json)
  , "Location" :: Maybe (Value Location)
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
  { "Latitude" :: Value Number
  , "Longitude" :: Value Number
  }

coordinates :: { "Latitude" :: Value Number, "Longitude" :: Value Number } -> Coordinates
coordinates required =
  required