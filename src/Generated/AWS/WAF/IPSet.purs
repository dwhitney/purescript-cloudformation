module CloudFormation.AWS.WAF.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAF::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html
-- |
-- | - `IPSetDescriptors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-ipsetdescriptors
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-name
newtype IPSet = IPSet
  { "Name" :: String
  , "IPSetDescriptors" :: Maybe (Array IPSetDescriptor)
  }

derive instance newtypeIPSet :: Newtype IPSet _
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::WAF::IPSet"

ipsPSet :: { "Name" :: String } -> IPSet
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
  { "Type" :: String
  , "Value" :: String
  }

ipsPSetDescriptor :: { "Type" :: String, "Value" :: String } -> IPSetDescriptor
ipsPSetDescriptor required =
  required