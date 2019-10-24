module CloudFormation.AWS.WAF.XssMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type XssMatchSet =
  { "Name" :: String
  , "XssMatchTuples" :: Array XssMatchTuple
  }

xssMatchSet :: { "Name" :: String, "XssMatchTuples" :: Array XssMatchTuple } -> XssMatchSet
xssMatchSet required =
  required

type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  merge required
    { "Data" : Nothing
    }

type XssMatchTuple =
  { "FieldToMatch" :: FieldToMatch
  , "TextTransformation" :: String
  }

xssMatchTuple :: { "FieldToMatch" :: FieldToMatch, "TextTransformation" :: String } -> XssMatchTuple
xssMatchTuple required =
  required