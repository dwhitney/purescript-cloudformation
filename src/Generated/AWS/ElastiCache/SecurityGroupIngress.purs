module CloudFormation.AWS.ElastiCache.SecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElastiCache::SecurityGroupIngress`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html
-- |
-- | - `CacheSecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-cachesecuritygroupname
-- | - `EC2SecurityGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupname
-- | - `EC2SecurityGroupOwnerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupownerid
newtype SecurityGroupIngress = SecurityGroupIngress
  { "CacheSecurityGroupName" :: String
  , "EC2SecurityGroupName" :: String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

derive instance newtypeSecurityGroupIngress :: Newtype SecurityGroupIngress _
instance resourceSecurityGroupIngress :: Resource SecurityGroupIngress where type_ _ = "AWS::ElastiCache::SecurityGroupIngress"

securityGroupIngress :: { "CacheSecurityGroupName" :: String, "EC2SecurityGroupName" :: String } -> SecurityGroupIngress
securityGroupIngress required = SecurityGroupIngress
  (merge required
    { "EC2SecurityGroupOwnerId" : Nothing
    })