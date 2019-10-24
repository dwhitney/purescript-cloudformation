module CloudFormation.AWS.Route53Resolver.ResolverRuleAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Route53Resolver::ResolverRuleAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html
-- |
-- | - `VPCId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-vpcid
-- | - `ResolverRuleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-resolverruleid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-name
newtype ResolverRuleAssociation = ResolverRuleAssociation
  { "VPCId" :: String
  , "ResolverRuleId" :: String
  , "Name" :: Maybe String
  }

derive instance newtypeResolverRuleAssociation :: Newtype ResolverRuleAssociation _
instance resourceResolverRuleAssociation :: Resource ResolverRuleAssociation where type_ _ = "AWS::Route53Resolver::ResolverRuleAssociation"

resolverRuleAssociation :: { "VPCId" :: String, "ResolverRuleId" :: String } -> ResolverRuleAssociation
resolverRuleAssociation required = ResolverRuleAssociation
  (merge required
    { "Name" : Nothing
    })