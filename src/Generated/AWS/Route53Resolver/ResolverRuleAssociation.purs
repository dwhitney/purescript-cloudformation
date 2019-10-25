module CloudFormation.AWS.Route53Resolver.ResolverRuleAssociation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "VPCId" :: Value String
  , "ResolverRuleId" :: Value String
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeResolverRuleAssociation :: Newtype ResolverRuleAssociation _
derive newtype instance writeResolverRuleAssociation :: WriteForeign ResolverRuleAssociation
instance resourceResolverRuleAssociation :: Resource ResolverRuleAssociation where type_ _ = "AWS::Route53Resolver::ResolverRuleAssociation"

resolverRuleAssociation :: { "VPCId" :: Value String, "ResolverRuleId" :: Value String } -> ResolverRuleAssociation
resolverRuleAssociation required = ResolverRuleAssociation
  (merge required
    { "Name" : Nothing
    })