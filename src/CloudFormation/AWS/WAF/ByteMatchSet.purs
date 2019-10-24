module CloudFormation.AWS.WAF.ByteMatchSet where 

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

type ByteMatchTuple =
  { "FieldToMatch" :: FieldToMatch
  , "PositionalConstraint" :: String
  , "TextTransformation" :: String
  , "TargetString" :: Maybe String
  , "TargetStringBase64" :: Maybe String
  }

byteMatchTuple :: { "FieldToMatch" :: FieldToMatch, "PositionalConstraint" :: String, "TextTransformation" :: String } -> ByteMatchTuple
byteMatchTuple required =
  merge required
    { "TargetString" : Nothing
    , "TargetStringBase64" : Nothing
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