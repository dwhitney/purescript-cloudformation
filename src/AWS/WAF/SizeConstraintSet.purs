module AWS.WAF.SizeConstraintSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SizeConstraintSet =
  { "Name" :: String
  , "SizeConstraints" :: Array SizeConstraint
  }

sizeConstraintSet :: { "Name" :: String, "SizeConstraints" :: Array SizeConstraint } -> SizeConstraintSet
sizeConstraintSet required =
  required

type SizeConstraint =
  { "ComparisonOperator" :: String
  , "FieldToMatch" :: FieldToMatch
  , "Size" :: Int
  , "TextTransformation" :: String
  }

sizeConstraint :: { "ComparisonOperator" :: String, "FieldToMatch" :: FieldToMatch, "Size" :: Int, "TextTransformation" :: String } -> SizeConstraint
sizeConstraint required =
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