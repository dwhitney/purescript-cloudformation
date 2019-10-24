module AWS.LakeFormation.Resource where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Resource =
  { "ResourceArn" :: String
  , "UseServiceLinkedRole" :: Boolean
  , "RoleArn" :: Maybe String
  }

resource :: { "ResourceArn" :: String, "UseServiceLinkedRole" :: Boolean } -> Resource
resource required =
  merge required
    { "RoleArn" : Nothing
    }