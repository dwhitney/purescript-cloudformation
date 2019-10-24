module CloudFormation.AWS.WAFRegional.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAFRegional::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-name
newtype IPSet = IPSet
  { "Name" :: String
  , "IPSetDescriptors" :: Maybe (Array IPSetDescriptor)
  }

derive instance newtypeIPSet :: Newtype IPSet _
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::WAFRegional::IPSet"

ipsPSet :: { "Name" :: String } -> IPSet
ipsPSet required = IPSet
  (merge required
    { "IPSetDescriptors" : Nothing
    })

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