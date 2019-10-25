module CloudFormation.AWS.ElastiCache.SecurityGroupIngress where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "CacheSecurityGroupName" :: Value String
  , "EC2SecurityGroupName" :: Value String
  , "EC2SecurityGroupOwnerId" :: Maybe (Value String)
  }

derive instance newtypeSecurityGroupIngress :: Newtype SecurityGroupIngress _
derive newtype instance writeSecurityGroupIngress :: WriteForeign SecurityGroupIngress
instance resourceSecurityGroupIngress :: Resource SecurityGroupIngress where type_ _ = "AWS::ElastiCache::SecurityGroupIngress"

securityGroupIngress :: { "CacheSecurityGroupName" :: Value String, "EC2SecurityGroupName" :: Value String } -> SecurityGroupIngress
securityGroupIngress required = SecurityGroupIngress
  (merge required
    { "EC2SecurityGroupOwnerId" : Nothing
    })