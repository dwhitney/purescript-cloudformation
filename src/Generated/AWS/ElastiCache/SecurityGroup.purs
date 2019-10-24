module CloudFormation.AWS.ElastiCache.SecurityGroup where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElastiCache::SecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html#cfn-elasticache-securitygroup-description
newtype SecurityGroup = SecurityGroup
  { "Description" :: String
  }

derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
instance resourceSecurityGroup :: Resource SecurityGroup where type_ _ = "AWS::ElastiCache::SecurityGroup"

securityGroup :: { "Description" :: String } -> SecurityGroup
securityGroup required = SecurityGroup
  required