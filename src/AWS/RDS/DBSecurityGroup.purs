module AWS.RDS.DBSecurityGroup where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type DBSecurityGroup =
  { "DBSecurityGroupIngress" :: Array Ingress
  , "GroupDescription" :: String
  , "EC2VpcId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbsBSecurityGroup :: { "DBSecurityGroupIngress" :: Array Ingress, "GroupDescription" :: String } -> DBSecurityGroup
dbsBSecurityGroup required =
  merge required
    { "EC2VpcId" : Nothing
    , "Tags" : Nothing
    }

type Ingress =
  { "CIDRIP" :: Maybe String
  , "EC2SecurityGroupId" :: Maybe String
  , "EC2SecurityGroupName" :: Maybe String
  , "EC2SecurityGroupOwnerId" :: Maybe String
  }

ingress :: Ingress
ingress =
  { "CIDRIP" : Nothing
  , "EC2SecurityGroupId" : Nothing
  , "EC2SecurityGroupName" : Nothing
  , "EC2SecurityGroupOwnerId" : Nothing
  }