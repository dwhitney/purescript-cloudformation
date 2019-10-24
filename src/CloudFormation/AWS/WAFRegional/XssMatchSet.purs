module CloudFormation.AWS.WAFRegional.XssMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type XssMatchSet =
  { "Name" :: String
  , "XssMatchTuples" :: Maybe (Array XssMatchTuple)
  }

xssMatchSet :: { "Name" :: String } -> XssMatchSet
xssMatchSet required =
  merge required
    { "XssMatchTuples" : Nothing
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

type XssMatchTuple =
  { "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

xssMatchTuple :: { "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> XssMatchTuple
xssMatchTuple required =
  required