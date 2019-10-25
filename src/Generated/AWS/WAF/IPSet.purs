module CloudFormation.AWS.WAF.IPSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAF::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-name
newtype IPSet = IPSet
  { "Name" :: Value String
  , "IPSetDescriptors" :: Maybe (Value (Array IPSetDescriptor))
  }

derive instance newtypeIPSet :: Newtype IPSet _
derive newtype instance writeIPSet :: WriteForeign IPSet
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::WAF::IPSet"

ipsPSet :: { "Name" :: Value String } -> IPSet
ipsPSet required = IPSet
  (merge required
    { "IPSetDescriptors" : Nothing
    })

-- | `AWS::WAF::IPSet.IPSetDescriptor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-value
type IPSetDescriptor =
  { "Type" :: Value String
  , "Value" :: Value String
  }

ipsPSetDescriptor :: { "Type" :: Value String, "Value" :: Value String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required