module CloudFormation.AWS.Route53Resolver.ResolverRuleAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Route53Resolver::ResolverRuleAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html-- |
-- | - `VPCId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-vpcid
-- | - `ResolverRuleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-resolverruleid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverruleassociation.html#cfn-route53resolver-resolverruleassociation-name
type ResolverRuleAssociation =
  { "VPCId" :: String
  , "ResolverRuleId" :: String
  , "Name" :: Maybe String
  }

resolverRuleAssociation :: { "VPCId" :: String, "ResolverRuleId" :: String } -> ResolverRuleAssociation
resolverRuleAssociation required =
  merge required
    { "Name" : Nothing
    }