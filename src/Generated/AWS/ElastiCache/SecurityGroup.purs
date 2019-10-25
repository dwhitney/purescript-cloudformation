module CloudFormation.AWS.ElastiCache.SecurityGroup where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElastiCache::SecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html#cfn-elasticache-securitygroup-description
newtype SecurityGroup = SecurityGroup
  { "Description" :: Value String
  }

derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
derive newtype instance writeSecurityGroup :: WriteForeign SecurityGroup
instance resourceSecurityGroup :: Resource SecurityGroup where type_ _ = "AWS::ElastiCache::SecurityGroup"

securityGroup :: { "Description" :: Value String } -> SecurityGroup
securityGroup required = SecurityGroup
  required