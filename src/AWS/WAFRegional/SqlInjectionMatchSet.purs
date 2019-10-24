module AWS.WAFRegional.SqlInjectionMatchSet where 

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
  { "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

sqlInjectionMatchTuple :: { "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> SqlInjectionMatchTuple
sqlInjectionMatchTuple required =
  required