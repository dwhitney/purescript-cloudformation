module CloudFormation.AWS.WAF.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAF::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-name
type IPSet =
  { "Name" :: String
  , "IPSetDescriptors" :: Maybe (Array IPSetDescriptor)
  }

ipsPSet :: { "Name" :: String } -> IPSet
ipsPSet required =
  merge required
    { "IPSetDescriptors" : Nothing
    }

-- | `AWS::WAF::IPSet.IPSetDescriptor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-value
type IPSetDescriptor =
  { "Type" :: String
  , "Value" :: String
  }

ipsPSetDescriptor :: { "Type" :: String, "Value" :: String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required