module CloudFormation.AWS.DAX.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SubnetGroup =
  { "SubnetIds" :: Array String
  , "Description" :: Maybe String
  , "SubnetGroupName" :: Maybe String
  }

subnetGroup :: { "SubnetIds" :: Array String } -> SubnetGroup
subnetGroup required =
  merge required
    { "Description" : Nothing
    , "SubnetGroupName" : Nothing
    }