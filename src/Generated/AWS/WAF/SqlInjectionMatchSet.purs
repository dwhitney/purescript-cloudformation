module CloudFormation.AWS.WAF.SqlInjectionMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAF::SqlInjectionMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html#cfn-waf-sqlinjectionmatchset-name
-- | - `SqlInjectionMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples
newtype SqlInjectionMatchSet = SqlInjectionMatchSet
  { "Name" :: String
  , "SqlInjectionMatchTuples" :: Maybe (Array SqlInjectionMatchTuple)
  }

derive instance newtypeSqlInjectionMatchSet :: Newtype SqlInjectionMatchSet _
instance resourceSqlInjectionMatchSet :: Resource SqlInjectionMatchSet where type_ _ = "AWS::WAF::SqlInjectionMatchSet"

sqlInjectionMatchSet :: { "Name" :: String } -> SqlInjectionMatchSet
sqlInjectionMatchSet required = SqlInjectionMatchSet
  (merge required
    { "SqlInjectionMatchTuples" : Nothing
    })

-- | `AWS::WAF::SqlInjectionMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html
-- |
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-data
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-type
type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAF::SqlInjectionMatchSet.SqlInjectionMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-fieldtomatch
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-texttransformation
type SqlInjectionMatchTuple =
  { "FieldToMatch" :: FieldToMatch
  , "TextTransformation" :: String
  }

sqlInjectionMatchTuple :: { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: String } -> SqlInjectionMatchTuple
sqlInjectionMatchTuple required =
  required