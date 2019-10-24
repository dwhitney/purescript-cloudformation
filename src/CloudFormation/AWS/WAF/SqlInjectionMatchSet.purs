module CloudFormation.AWS.WAF.SqlInjectionMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SqlInjectionMatchSet =
  { "Name" :: String
  , "SqlInjectionMatchTuples" :: Maybe (Array SqlInjectionMatchTuple)
  }

sqlInjectionMatchSet :: { "Name" :: String } -> SqlInjectionMatchSet
sqlInjectionMatchSet required =
  merge required
    { "SqlInjectionMatchTuples" : Nothing
    }

type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  merge required
    { "Data" : Nothing
    }

type SqlInjectionMatchTuple =
  { "FieldToMatch" :: FieldToMatch
  , "TextTransformation" :: String
  }

sqlInjectionMatchTuple :: { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: String } -> SqlInjectionMatchTuple
sqlInjectionMatchTuple required =
  required