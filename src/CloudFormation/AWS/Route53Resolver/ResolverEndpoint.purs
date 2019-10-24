module CloudFormation.AWS.Route53Resolver.ResolverEndpoint where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Route53Resolver::ResolverEndpoint`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html-- |
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
type ResolverEndpoint =
  { "IpAddresses" :: Array IpAddressRequest
  , "Direction" :: String
  , "SecurityGroupIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

resolverEndpoint :: { "IpAddresses" :: Array IpAddressRequest, "Direction" :: String, "SecurityGroupIds" :: Array String } -> ResolverEndpoint
resolverEndpoint required =
  merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    }

-- | `AWS::Route53Resolver::ResolverEndpoint.IpAddressRequest`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html-- |
-- | - `Ip`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ip
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-subnetid
type IpAddressRequest =
  { "SubnetId" :: String
  , "Ip" :: Maybe String
  }

ipAddressRequest :: { "SubnetId" :: String } -> IpAddressRequest
ipAddressRequest required =
  merge required
    { "Ip" : Nothing
    }