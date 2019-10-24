module AWS.Redshift.ClusterSecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ClusterSecurityGroupIngress =
  { "ClusterSecurityGroupName" :: String
  , "CIDRIP" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

clusterSecurityGroupIngress :: { "ClusterSecurityGroupName" :: String } -> ClusterSecurityGroupIngress
clusterSecurityGroupIngress required =
  merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    }