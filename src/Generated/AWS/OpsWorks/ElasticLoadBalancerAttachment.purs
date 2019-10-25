module CloudFormation.AWS.OpsWorks.ElasticLoadBalancerAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::OpsWorks::ElasticLoadBalancerAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html
-- |
-- | - `ElasticLoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-elbname
-- | - `LayerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-layerid
newtype ElasticLoadBalancerAttachment = ElasticLoadBalancerAttachment
  { "ElasticLoadBalancerName" :: Value String
  , "LayerId" :: Value String
  }

derive instance newtypeElasticLoadBalancerAttachment :: Newtype ElasticLoadBalancerAttachment _
derive newtype instance writeElasticLoadBalancerAttachment :: WriteForeign ElasticLoadBalancerAttachment
instance resourceElasticLoadBalancerAttachment :: Resource ElasticLoadBalancerAttachment where type_ _ = "AWS::OpsWorks::ElasticLoadBalancerAttachment"

elasticLoadBalancerAttachment :: { "ElasticLoadBalancerName" :: Value String, "LayerId" :: Value String } -> ElasticLoadBalancerAttachment
elasticLoadBalancerAttachment required = ElasticLoadBalancerAttachment
  required