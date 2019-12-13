module CloudFormation.AWS.WAFv2.IPSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::WAFv2::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-name
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-scope
-- | - `IPAddressVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipaddressversion
-- | - `Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-addresses
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-tags
newtype IPSet = IPSet
  { "Name" :: Value String
  , "Scope" :: Value String
  , "Description" :: Maybe (Value String)
  , "IPAddressVersion" :: Maybe (Value String)
  , "Addresses" :: Maybe (Value IPAddresses)
  , "Tags" :: Maybe (Value TagList)
  }

derive instance newtypeIPSet :: Newtype IPSet _
derive newtype instance writeIPSet :: WriteForeign IPSet
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::WAFv2::IPSet"

ipsPSet :: { "Name" :: Value String, "Scope" :: Value String } -> IPSet
ipsPSet required = IPSet
  (merge required
    { "Description" : Nothing
    , "IPAddressVersion" : Nothing
    , "Addresses" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::WAFv2::IPSet.IPAddresses`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipaddresses.html
-- |
-- | - `IPAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipaddresses.html#cfn-wafv2-ipset-ipaddresses-ipaddresses
type IPAddresses =
  { "IPAddresses" :: Maybe (Value (Array String))
  }

ipaPAddresses :: IPAddresses
ipaPAddresses =
  { "IPAddresses" : Nothing
  }

-- | `AWS::WAFv2::IPSet.TagList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-taglist.html
-- |
-- | - `TagList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-taglist.html#cfn-wafv2-ipset-taglist-taglist
type TagList =
  { "TagList" :: Maybe (Value (Array Tag))
  }

tagList :: TagList
tagList =
  { "TagList" : Nothing
  }