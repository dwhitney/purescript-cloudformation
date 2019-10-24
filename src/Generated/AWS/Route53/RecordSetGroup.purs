module CloudFormation.AWS.Route53.RecordSetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Route53::RecordSetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-comment
-- | - `HostedZoneId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzoneid
-- | - `HostedZoneName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-hostedzonename
-- | - `RecordSets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-recordsetgroup.html#cfn-route53-recordsetgroup-recordsets
type RecordSetGroup =
  { "Comment" :: Maybe String
  , "HostedZoneId" :: Maybe String
  , "HostedZoneName" :: Maybe String
  , "RecordSets" :: Maybe (Array RecordSet)
  }

recordSetGroup :: RecordSetGroup
recordSetGroup =
  { "Comment" : Nothing
  , "HostedZoneId" : Nothing
  , "HostedZoneName" : Nothing
  , "RecordSets" : Nothing
  }

-- | `AWS::Route53::RecordSetGroup.GeoLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html
-- |
-- | - `ContinentCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordsetgroup-geolocation-continentcode
-- | - `CountryCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
-- | - `SubdivisionCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
type GeoLocation =
  { "ContinentCode" :: Maybe String
  , "CountryCode" :: Maybe String
  , "SubdivisionCode" :: Maybe String
  }

geoLocation :: GeoLocation
geoLocation =
  { "ContinentCode" : Nothing
  , "CountryCode" : Nothing
  , "SubdivisionCode" : Nothing
  }

-- | `AWS::Route53::RecordSetGroup.AliasTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html
-- |
-- | - `DNSName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-dnshostname
-- | - `EvaluateTargetHealth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-evaluatetargethealth
-- | - `HostedZoneId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid
type AliasTarget =
  { "DNSName" :: String
  , "HostedZoneId" :: String
  , "EvaluateTargetHealth" :: Maybe Boolean
  }

aliasTarget :: { "DNSName" :: String, "HostedZoneId" :: String } -> AliasTarget
aliasTarget required =
  merge required
    { "EvaluateTargetHealth" : Nothing
    }

-- | `AWS::Route53::RecordSetGroup.RecordSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html
-- |
-- | - `AliasTarget`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-aliastarget
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-comment
-- | - `Failover`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-failover
-- | - `GeoLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-geolocation
-- | - `HealthCheckId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-healthcheckid
-- | - `HostedZoneId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzoneid
-- | - `HostedZoneName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzonename
-- | - `MultiValueAnswer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-multivalueanswer
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-name
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-region
-- | - `ResourceRecords`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-resourcerecords
-- | - `SetIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-setidentifier
-- | - `TTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-ttl
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-type
-- | - `Weight`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-weight
type RecordSet =
  { "Name" :: String
  , "Type" :: String
  , "AliasTarget" :: Maybe AliasTarget
  , "Comment" :: Maybe String
  , "Failover" :: Maybe String
  , "GeoLocation" :: Maybe GeoLocation
  , "HealthCheckId" :: Maybe String
  , "HostedZoneId" :: Maybe String
  , "HostedZoneName" :: Maybe String
  , "MultiValueAnswer" :: Maybe Boolean
  , "Region" :: Maybe String
  , "ResourceRecords" :: Maybe (Array String)
  , "SetIdentifier" :: Maybe String
  , "TTL" :: Maybe String
  , "Weight" :: Maybe Int
  }

recordSet :: { "Name" :: String, "Type" :: String } -> RecordSet
recordSet required =
  merge required
    { "AliasTarget" : Nothing
    , "Comment" : Nothing
    , "Failover" : Nothing
    , "GeoLocation" : Nothing
    , "HealthCheckId" : Nothing
    , "HostedZoneId" : Nothing
    , "HostedZoneName" : Nothing
    , "MultiValueAnswer" : Nothing
    , "Region" : Nothing
    , "ResourceRecords" : Nothing
    , "SetIdentifier" : Nothing
    , "TTL" : Nothing
    , "Weight" : Nothing
    }