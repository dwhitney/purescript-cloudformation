module CloudFormation.AWS.OpsWorks.ElasticLoadBalancerAttachment where 




-- | `AWS::OpsWorks::ElasticLoadBalancerAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html
-- |
-- | - `ElasticLoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-elbname
-- | - `LayerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-layerid
type ElasticLoadBalancerAttachment =
  { "ElasticLoadBalancerName" :: String
  , "LayerId" :: String
  }

elasticLoadBalancerAttachment :: { "ElasticLoadBalancerName" :: String, "LayerId" :: String } -> ElasticLoadBalancerAttachment
elasticLoadBalancerAttachment required =
  required