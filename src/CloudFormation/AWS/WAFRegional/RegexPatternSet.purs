module CloudFormation.AWS.WAFRegional.RegexPatternSet where 




type RegexPatternSet =
  { "RegexPatternStrings" :: Array String
  , "Name" :: String
  }

regexPatternSet :: { "RegexPatternStrings" :: Array String, "Name" :: String } -> RegexPatternSet
regexPatternSet required =
  required