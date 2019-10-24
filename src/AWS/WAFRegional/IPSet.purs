module AWS.WAFRegional.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type IPSet =
  { "Name" :: String
  , "IPSetDescriptors" :: Maybe (Array IPSetDescriptor)
  }

ipsPSet :: { "Name" :: String } -> IPSet
ipsPSet required =
  merge required
    { "IPSetDescriptors" : Nothing
    }

type IPSetDescriptor =
  { "Type" :: String
  , "Value" :: String
  }

ipsPSetDescriptor :: { "Type" :: String, "Value" :: String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required