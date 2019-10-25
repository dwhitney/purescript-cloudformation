module CloudFormation.AWS.SES.ReceiptFilter where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SES::ReceiptFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html
-- |
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html#cfn-ses-receiptfilter-filter
newtype ReceiptFilter = ReceiptFilter
  { "Filter" :: Value Filter
  }

derive instance newtypeReceiptFilter :: Newtype ReceiptFilter _
derive newtype instance writeReceiptFilter :: WriteForeign ReceiptFilter
instance resourceReceiptFilter :: Resource ReceiptFilter where type_ _ = "AWS::SES::ReceiptFilter"

receiptFilter :: { "Filter" :: Value Filter } -> ReceiptFilter
receiptFilter required = ReceiptFilter
  required

-- | `AWS::SES::ReceiptFilter.IpFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html
-- |
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-policy
-- | - `Cidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-cidr
type IpFilter =
  { "Policy" :: Value String
  , "Cidr" :: Value String
  }

ipFilter :: { "Policy" :: Value String, "Cidr" :: Value String } -> IpFilter
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
  { "IpFilter" :: Value IpFilter
  , "Name" :: Maybe (Value String)
  }

filter :: { "IpFilter" :: Value IpFilter } -> Filter
filter required =
  (merge required
    { "Name" : Nothing
    })