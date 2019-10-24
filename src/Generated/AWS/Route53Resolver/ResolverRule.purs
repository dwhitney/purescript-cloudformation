module CloudFormation.AWS.Route53Resolver.ResolverRule where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Route53Resolver::ResolverRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html
-- |
-- | - `ResolverEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-resolverendpointid
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-domainname
-- | - `RuleType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-ruletype
-- | - `TargetIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-targetips
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-name
newtype ResolverRule = ResolverRule
  { "DomainName" :: String
  , "RuleType" :: String
  , "ResolverEndpointId" :: Maybe String
  , "TargetIps" :: Maybe (Array TargetAddress)
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

derive instance newtypeResolverRule :: Newtype ResolverRule _
instance resourceResolverRule :: Resource ResolverRule where type_ _ = "AWS::Route53Resolver::ResolverRule"

resolverRule :: { "DomainName" :: String, "RuleType" :: String } -> ResolverRule
resolverRule required = ResolverRule
  (merge required
    { "ResolverEndpointId" : Nothing
    , "TargetIps" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::Route53Resolver::ResolverRule.TargetAddress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html
-- |
-- | - `Ip`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-ip
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-port
type TargetAddress =
  { "Ip" :: String
  , "Port" :: Maybe String
  }

targetAddress :: { "Ip" :: String } -> TargetAddress
targetAddress required =
  (merge required
    { "Port" : Nothing
    })