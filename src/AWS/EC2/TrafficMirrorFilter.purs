module AWS.EC2.TrafficMirrorFilter where 

import Data.Maybe (Maybe(..))
import Tag


type TrafficMirrorFilter =
  { "Description" :: Maybe String
  , "NetworkServices" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

trafficMirrorFilter :: TrafficMirrorFilter
trafficMirrorFilter =
  { "Description" : Nothing
  , "NetworkServices" : Nothing
  , "Tags" : Nothing
  }