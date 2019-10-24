module CloudFormation.AWS.WAFRegional.SqlInjectionMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::SqlInjectionMatchSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html-- |
-- | - `SqlInjectionMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-name
type SqlInjectionMatchSet =
  { "Name" :: String
  , "SqlInjectionMatchTuples" :: Maybe (Array SqlInjectionMatchTuple)
  }

sqlInjectionMatchSet :: { "Name" :: String } -> SqlInjectionMatchSet
sqlInjectionMatchSet required =
  merge required
    { "SqlInjectionMatchTuples" : Nothing
    }

-- | `AWS::WAFRegional::SqlInjectionMatchSet.FieldToMatch`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  merge required
    { "Data" : Nothing
    }

-- | `AWS::WAFRegional::SqlInjectionMatchSet.SqlInjectionMatchTuple`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html-- |
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-fieldtomatch
type SqlInjectionMatchTuple =
  { "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

sqlInjectionMatchTuple :: { "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> SqlInjectionMatchTuple
sqlInjectionMatchTuple required =
  required