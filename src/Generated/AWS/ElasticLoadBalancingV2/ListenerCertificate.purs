module CloudFormation.AWS.ElasticLoadBalancingV2.ListenerCertificate where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))


-- | `AWS::ElasticLoadBalancingV2::ListenerCertificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html
-- |
-- | - `Certificates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-certificates
-- | - `ListenerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-listenerarn
newtype ListenerCertificate = ListenerCertificate
  { "Certificates" :: Value (Array Certificate)
  , "ListenerArn" :: Value String
  }

derive instance newtypeListenerCertificate :: Newtype ListenerCertificate _
derive newtype instance writeListenerCertificate :: WriteForeign ListenerCertificate
instance resourceListenerCertificate :: Resource ListenerCertificate where type_ _ = "AWS::ElasticLoadBalancingV2::ListenerCertificate"

listenerCertificate :: { "Certificates" :: Value (Array Certificate), "ListenerArn" :: Value String } -> ListenerCertificate
listenerCertificate required = ListenerCertificate
  required

-- | `AWS::ElasticLoadBalancingV2::ListenerCertificate.Certificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html
-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
type Certificate =
  { "CertificateArn" :: Maybe (Value String)
  }

certificate :: Certificate
certificate =
  { "CertificateArn" : Nothing
  }