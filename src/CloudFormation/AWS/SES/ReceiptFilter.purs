module CloudFormation.AWS.SES.ReceiptFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ReceiptFilter =
  { "Filter" :: Filter
  }

receiptFilter :: { "Filter" :: Filter } -> ReceiptFilter
receiptFilter required =
  required

type IpFilter =
  { "Policy" :: String
  , "Cidr" :: String
  }

ipFilter :: { "Policy" :: String, "Cidr" :: String } -> IpFilter
ipFilter required =
  required

type Filter =
  { "IpFilter" :: IpFilter
  , "Name" :: Maybe String
  }

filter :: { "IpFilter" :: IpFilter } -> Filter
filter required =
  merge required
    { "Name" : Nothing
    }