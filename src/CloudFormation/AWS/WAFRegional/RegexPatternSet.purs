module CloudFormation.AWS.WAFRegional.RegexPatternSet where 




-- | `AWS::WAFRegional::RegexPatternSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html-- |
-- | - `RegexPatternStrings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-regexpatternstrings
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-name
type RegexPatternSet =
  { "RegexPatternStrings" :: Array String
  , "Name" :: String
  }

regexPatternSet :: { "RegexPatternStrings" :: Array String, "Name" :: String } -> RegexPatternSet
regexPatternSet required =
  required