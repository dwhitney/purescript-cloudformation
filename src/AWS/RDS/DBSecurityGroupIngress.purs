module AWS.RDS.DBSecurityGroupIngress where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DBSecurityGroupIngress =
  { "DBSecurityGroupName" :: String
  , "CIDRIP" :: Maybe String
  , "EC2SecurityGroupId" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

dbsBSecurityGroupIngress :: { "DBSecurityGroupName" :: String } -> DBSecurityGroupIngress
dbsBSecurityGroupIngress required =
  merge required
    { "CIDRIP" : Nothing
    , "EC2SecurityGroupId" : Nothing
    , "EC2SecurityGroupName" : Nothing
    , "EC2SecurityGroupOwnerId" : Nothing
    }