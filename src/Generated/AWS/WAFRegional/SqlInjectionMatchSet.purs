module CloudFormation.AWS.WAFRegional.SqlInjectionMatchSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::SqlInjectionMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html
-- |
-- | - `SqlInjectionMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-name
newtype SqlInjectionMatchSet = SqlInjectionMatchSet
  { "Name" :: Value String
  , "SqlInjectionMatchTuples" :: Maybe (Value (Array SqlInjectionMatchTuple))
  }

derive instance newtypeSqlInjectionMatchSet :: Newtype SqlInjectionMatchSet _
derive newtype instance writeSqlInjectionMatchSet :: WriteForeign SqlInjectionMatchSet
instance resourceSqlInjectionMatchSet :: Resource SqlInjectionMatchSet where type_ _ = "AWS::WAFRegional::SqlInjectionMatchSet"

sqlInjectionMatchSet :: { "Name" :: Value String } -> SqlInjectionMatchSet
sqlInjectionMatchSet required = SqlInjectionMatchSet
  (merge required
    { "SqlInjectionMatchTuples" : Nothing
    })

-- | `AWS::WAFRegional::SqlInjectionMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: Value String
  , "Data" :: Maybe (Value String)
  }

fieldToMatch :: { "Type" :: Value String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAFRegional::SqlInjectionMatchSet.SqlInjectionMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html
-- |
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-fieldtomatch
type SqlInjectionMatchTuple =
  { "TextTransformation" :: Value String
  , "FieldToMatch" :: Value FieldToMatch
  }

sqlInjectionMatchTuple :: { "TextTransformation" :: Value String, "FieldToMatch" :: Value FieldToMatch } -> SqlInjectionMatchTuple
sqlInjectionMatchTuple required =
  required