module AWS.SDB.Domain where 

import Data.Maybe (Maybe(..))


type Domain =
  { "Description" :: Maybe String
  }

domain :: Domain
domain =
  { "Description" : Nothing
  }