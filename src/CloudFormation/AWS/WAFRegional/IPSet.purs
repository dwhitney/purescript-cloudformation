module CloudFormation.AWS.WAFRegional.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-name
type IPSet =
  { "Name" :: String
  , "IPSetDescriptors" :: Maybe (Array IPSetDescriptor)
  }

ipsPSet :: { "Name" :: String } -> IPSet
ipsPSet required =
  merge required
    { "IPSetDescriptors" : Nothing
    }

-- | `AWS::WAFRegional::IPSet.IPSetDescriptor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html#cfn-wafregional-ipset-ipsetdescriptor-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html#cfn-wafregional-ipset-ipsetdescriptor-value
type IPSetDescriptor =
  { "Type" :: String
  , "Value" :: String
  }

ipsPSetDescriptor :: { "Type" :: String, "Value" :: String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required