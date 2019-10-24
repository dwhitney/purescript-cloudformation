module CloudFormation.AWS.ApiGateway.VpcLink where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VpcLink =
  { "TargetArns" :: Array String
  , "Name" :: String
  , "Description" :: Maybe String
  }

vpcLink :: { "TargetArns" :: Array String, "Name" :: String } -> VpcLink
vpcLink required =
  merge required
    { "Description" : Nothing
    }