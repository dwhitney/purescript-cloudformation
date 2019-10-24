module CloudFormation.AWS.WAFRegional.RegexPatternSet where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAFRegional::RegexPatternSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html
-- |
-- | - `RegexPatternStrings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-regexpatternstrings
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-name
newtype RegexPatternSet = RegexPatternSet
  { "RegexPatternStrings" :: Array String
  , "Name" :: String
  }

derive instance newtypeRegexPatternSet :: Newtype RegexPatternSet _
instance resourceRegexPatternSet :: Resource RegexPatternSet where type_ _ = "AWS::WAFRegional::RegexPatternSet"

regexPatternSet :: { "RegexPatternStrings" :: Array String, "Name" :: String } -> RegexPatternSet
regexPatternSet required = RegexPatternSet
  required