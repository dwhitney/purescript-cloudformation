module CloudFormation.AWS.Route53.RecordSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "Type" :: Value String
  , "AliasTarget" :: Maybe (Value AliasTarget)
  , "Comment" :: Maybe (Value String)
  , "Failover" :: Maybe (Value String)
  , "GeoLocation" :: Maybe (Value GeoLocation)
  , "HealthCheckId" :: Maybe (Value String)
  , "HostedZoneId" :: Maybe (Value String)
  , "HostedZoneName" :: Maybe (Value String)
  , "MultiValueAnswer" :: Maybe (Value Boolean)
  , "Region" :: Maybe (Value String)
  , "ResourceRecords" :: Maybe (Value (Array String))
  , "SetIdentifier" :: Maybe (Value String)
  , "TTL" :: Maybe (Value String)
  , "Weight" :: Maybe (Value Int)
  }

derive instance newtypeRecordSet :: Newtype RecordSet _
derive newtype instance writeRecordSet :: WriteForeign RecordSet
instance resourceRecordSet :: Resource RecordSet where type_ _ = "AWS::Route53::RecordSet"

recordSet :: { "Name" :: Value String, "Type" :: Value String } -> RecordSet
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
  { "DNSName" :: Value String
  , "HostedZoneId" :: Value String
  , "EvaluateTargetHealth" :: Maybe (Value Boolean)
  }

aliasTarget :: { "DNSName" :: Value String, "HostedZoneId" :: Value String } -> AliasTarget
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
  { "ContinentCode" :: Maybe (Value String)
  , "CountryCode" :: Maybe (Value String)
  , "SubdivisionCode" :: Maybe (Value String)
  }

geoLocation :: GeoLocation
geoLocation =
  { "ContinentCode" : Nothing
  , "CountryCode" : Nothing
  , "SubdivisionCode" : Nothing
  }