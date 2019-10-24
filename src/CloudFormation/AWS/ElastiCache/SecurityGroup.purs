module CloudFormation.AWS.ElastiCache.SecurityGroup where 




-- | `AWS::ElastiCache::SecurityGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html#cfn-elasticache-securitygroup-description
type SecurityGroup =
  { "Description" :: String
  }

securityGroup :: { "Description" :: String } -> SecurityGroup
securityGroup required =
  required