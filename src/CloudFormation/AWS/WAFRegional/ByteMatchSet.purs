module CloudFormation.AWS.WAFRegional.ByteMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ByteMatchSet =
  { "Name" :: String
  , "ByteMatchTuples" :: Maybe (Array ByteMatchTuple)
  }

byteMatchSet :: { "Name" :: String } -> ByteMatchSet
byteMatchSet required =
  merge required
    { "ByteMatchTuples" : Nothing
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

type ByteMatchTuple =
  { "PositionalConstraint" :: String
  , "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  , "TargetString" :: Maybe String
  , "TargetStringBase64" :: Maybe String
  }

byteMatchTuple :: { "PositionalConstraint" :: String, "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> ByteMatchTuple
byteMatchTuple required =
  merge required
    { "TargetString" : Nothing
    , "TargetStringBase64" : Nothing
    }