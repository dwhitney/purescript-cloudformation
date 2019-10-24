module CloudFormation.AWS.SES.ReceiptFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SES::ReceiptFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html
-- |
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html#cfn-ses-receiptfilter-filter
type ReceiptFilter =
  { "Filter" :: Filter
  }

receiptFilter :: { "Filter" :: Filter } -> ReceiptFilter
receiptFilter required =
  required

-- | `AWS::SES::ReceiptFilter.IpFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html
-- |
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-policy
-- | - `Cidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-cidr
type IpFilter =
  { "Policy" :: String
  , "Cidr" :: String
  }

ipFilter :: { "Policy" :: String, "Cidr" :: String } -> IpFilter
ipFilter required =
  required

-- | `AWS::SES::ReceiptFilter.Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html
-- |
-- | - `IpFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-ipfilter
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-name
type Filter =
  { "IpFilter" :: IpFilter
  , "Name" :: Maybe String
  }

filter :: { "IpFilter" :: IpFilter } -> Filter
filter required =
  merge required
    { "Name" : Nothing
    }