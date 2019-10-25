module CloudFormation.AWS.WAFRegional.IPSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-name
newtype IPSet = IPSet
  { "Name" :: Value String
  , "IPSetDescriptors" :: Maybe (Value (Array IPSetDescriptor))
  }

derive instance newtypeIPSet :: Newtype IPSet _
derive newtype instance writeIPSet :: WriteForeign IPSet
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::WAFRegional::IPSet"

ipsPSet :: { "Name" :: Value String } -> IPSet
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
  { "Type" :: Value String
  , "Value" :: Value String
  }

ipsPSetDescriptor :: { "Type" :: Value String, "Value" :: Value String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required