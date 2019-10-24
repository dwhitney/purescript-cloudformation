module CloudFormation.AWS.ElasticLoadBalancingV2.ListenerCertificate where 

import Data.Maybe (Maybe(..))


-- | `AWS::ElasticLoadBalancingV2::ListenerCertificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html-- |
-- | - `Certificates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-certificates
-- | - `ListenerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-listenerarn
type ListenerCertificate =
  { "Certificates" :: Array Certificate
  , "ListenerArn" :: String
  }

listenerCertificate :: { "Certificates" :: Array Certificate, "ListenerArn" :: String } -> ListenerCertificate
listenerCertificate required =
  required

-- | `AWS::ElasticLoadBalancingV2::ListenerCertificate.Certificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
type Certificate =
  { "CertificateArn" :: Maybe String
  }

certificate :: Certificate
certificate =
  { "CertificateArn" : Nothing
  }