module CloudFormation.AWS.OpsWorks.ElasticLoadBalancerAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::OpsWorks::ElasticLoadBalancerAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html
-- |
-- | - `ElasticLoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-elbname
-- | - `LayerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-layerid
newtype ElasticLoadBalancerAttachment = ElasticLoadBalancerAttachment
  { "ElasticLoadBalancerName" :: String
  , "LayerId" :: String
  }

derive instance newtypeElasticLoadBalancerAttachment :: Newtype ElasticLoadBalancerAttachment _
instance resourceElasticLoadBalancerAttachment :: Resource ElasticLoadBalancerAttachment where type_ _ = "AWS::OpsWorks::ElasticLoadBalancerAttachment"

elasticLoadBalancerAttachment :: { "ElasticLoadBalancerName" :: String, "LayerId" :: String } -> ElasticLoadBalancerAttachment
elasticLoadBalancerAttachment required = ElasticLoadBalancerAttachment
  required