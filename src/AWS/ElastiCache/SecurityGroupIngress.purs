module AWS.ElastiCache.SecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SecurityGroupIngress =
  { "CacheSecurityGroupName" :: String
  , "EC2SecurityGroupName" :: String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

securityGroupIngress :: { "CacheSecurityGroupName" :: String, "EC2SecurityGroupName" :: String } -> SecurityGroupIngress
securityGroupIngress required =
  merge required
    { "EC2SecurityGroupOwnerId" : Nothing
    }