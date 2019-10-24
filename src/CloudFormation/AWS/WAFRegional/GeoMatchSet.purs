module CloudFormation.AWS.WAFRegional.GeoMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type GeoMatchSet =
  { "Name" :: String
  , "GeoMatchConstraints" :: Maybe (Array GeoMatchConstraint)
  }

geoMatchSet :: { "Name" :: String } -> GeoMatchSet
geoMatchSet required =
  merge required
    { "GeoMatchConstraints" : Nothing
    }

type GeoMatchConstraint =
  { "Type" :: String
  , "Value" :: String
  }

geoMatchConstraint :: { "Type" :: String, "Value" :: String } -> GeoMatchConstraint
geoMatchConstraint required =
  required