module CloudFormation.AWS.Route53Resolver.ResolverRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "DomainName" :: Value String
  , "RuleType" :: Value String
  , "ResolverEndpointId" :: Maybe (Value String)
  , "TargetIps" :: Maybe (Value (Array TargetAddress))
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeResolverRule :: Newtype ResolverRule _
derive newtype instance writeResolverRule :: WriteForeign ResolverRule
instance resourceResolverRule :: Resource ResolverRule where type_ _ = "AWS::Route53Resolver::ResolverRule"

resolverRule :: { "DomainName" :: Value String, "RuleType" :: Value String } -> ResolverRule
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
  { "Ip" :: Value String
  , "Port" :: Maybe (Value String)
  }

targetAddress :: { "Ip" :: Value String } -> TargetAddress
targetAddress required =
  (merge required
    { "Port" : Nothing
    })