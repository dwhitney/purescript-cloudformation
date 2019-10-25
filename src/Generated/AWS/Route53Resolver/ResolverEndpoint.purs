module CloudFormation.AWS.Route53Resolver.ResolverEndpoint where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Route53Resolver::ResolverEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html
-- |
-- | - `IpAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-ipaddresses
-- | - `Direction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-direction
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-securitygroupids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-name
newtype ResolverEndpoint = ResolverEndpoint
  { "IpAddresses" :: Value (Array IpAddressRequest)
  , "Direction" :: Value String
  , "SecurityGroupIds" :: Value (Array String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeResolverEndpoint :: Newtype ResolverEndpoint _
derive newtype instance writeResolverEndpoint :: WriteForeign ResolverEndpoint
instance resourceResolverEndpoint :: Resource ResolverEndpoint where type_ _ = "AWS::Route53Resolver::ResolverEndpoint"

resolverEndpoint :: { "IpAddresses" :: Value (Array IpAddressRequest), "Direction" :: Value String, "SecurityGroupIds" :: Value (Array String) } -> ResolverEndpoint
resolverEndpoint required = ResolverEndpoint
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::Route53Resolver::ResolverEndpoint.IpAddressRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html
-- |
-- | - `Ip`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ip
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-subnetid
type IpAddressRequest =
  { "SubnetId" :: Value String
  , "Ip" :: Maybe (Value String)
  }

ipAddressRequest :: { "SubnetId" :: Value String } -> IpAddressRequest
ipAddressRequest required =
  (merge required
    { "Ip" : Nothing
    })