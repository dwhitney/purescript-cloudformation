module AWS.SES.ConfigurationSet where 

import Data.Maybe (Maybe(..))


type ConfigurationSet =
  { "Name" :: Maybe String
  }

configurationSet :: ConfigurationSet
configurationSet =
  { "Name" : Nothing
  }