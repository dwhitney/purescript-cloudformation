module AWS.OpsWorks.ElasticLoadBalancerAttachment where 




type ElasticLoadBalancerAttachment =
  { "ElasticLoadBalancerName" :: String
  , "LayerId" :: String
  }

elasticLoadBalancerAttachment :: { "ElasticLoadBalancerName" :: String, "LayerId" :: String } -> ElasticLoadBalancerAttachment
elasticLoadBalancerAttachment required =
  required