module CloudFormation.AWS.WAFRegional.RegexPatternSet where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::RegexPatternSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html
-- |
-- | - `RegexPatternStrings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-regexpatternstrings
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-name
newtype RegexPatternSet = RegexPatternSet
  { "RegexPatternStrings" :: Value (Array String)
  , "Name" :: Value String
  }

derive instance newtypeRegexPatternSet :: Newtype RegexPatternSet _
derive newtype instance writeRegexPatternSet :: WriteForeign RegexPatternSet
instance resourceRegexPatternSet :: Resource RegexPatternSet where type_ _ = "AWS::WAFRegional::RegexPatternSet"

regexPatternSet :: { "RegexPatternStrings" :: Value (Array String), "Name" :: Value String } -> RegexPatternSet
regexPatternSet required = RegexPatternSet
  required