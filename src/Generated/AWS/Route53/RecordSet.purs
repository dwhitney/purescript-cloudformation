module CloudFormation.AWS.Route53.RecordSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Route53::RecordSet`
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
newtype RecordSet = RecordSet
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

derive instance newtypeRecordSet :: Newtype RecordSet _
instance resourceRecordSet :: Resource RecordSet where type_ _ = "AWS::Route53::RecordSet"

recordSet :: { "Name" :: String, "Type" :: String } -> RecordSet
recordSet required = RecordSet
  (merge required
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
    })

-- | `AWS::Route53::RecordSet.AliasTarget`
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
  (merge required
    { "EvaluateTargetHealth" : Nothing
    })

-- | `AWS::Route53::RecordSet.GeoLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html
-- |
-- | - `ContinentCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-continentcode
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