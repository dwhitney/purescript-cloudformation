module CloudFormation.AWS.WAFv2.RegexPatternSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::WAFv2::RegexPatternSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-name
-- | - `RegularExpressionList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regularexpressionlist
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-scope
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-tags
newtype RegexPatternSet = RegexPatternSet
  { "Name" :: Value String
  , "Scope" :: Value String
  , "Description" :: Maybe (Value String)
  , "RegularExpressionList" :: Maybe (Value RegularExpressionList)
  , "Tags" :: Maybe (Value TagList)
  }

derive instance newtypeRegexPatternSet :: Newtype RegexPatternSet _
derive newtype instance writeRegexPatternSet :: WriteForeign RegexPatternSet
instance resourceRegexPatternSet :: Resource RegexPatternSet where type_ _ = "AWS::WAFv2::RegexPatternSet"

regexPatternSet :: { "Name" :: Value String, "Scope" :: Value String } -> RegexPatternSet
regexPatternSet required = RegexPatternSet
  (merge required
    { "Description" : Nothing
    , "RegularExpressionList" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::WAFv2::RegexPatternSet.Regex`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regex.html
-- |
-- | - `RegexString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regex.html#cfn-wafv2-regexpatternset-regex-regexstring
type Regex =
  { "RegexString" :: Maybe (Value String)
  }

regex :: Regex
regex =
  { "RegexString" : Nothing
  }

-- | `AWS::WAFv2::RegexPatternSet.TagList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-taglist.html
-- |
-- | - `TagList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-taglist.html#cfn-wafv2-regexpatternset-taglist-taglist
type TagList =
  { "TagList" :: Maybe (Value (Array Tag))
  }

tagList :: TagList
tagList =
  { "TagList" : Nothing
  }

-- | `AWS::WAFv2::RegexPatternSet.RegularExpressionList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regularexpressionlist.html
-- |
-- | - `RegularExpressionList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regularexpressionlist.html#cfn-wafv2-regexpatternset-regularexpressionlist-regularexpressionlist
type RegularExpressionList =
  { "RegularExpressionList" :: Maybe (Value (Array Regex))
  }

regularExpressionList :: RegularExpressionList
regularExpressionList =
  { "RegularExpressionList" : Nothing
  }