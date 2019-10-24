module AWS.WAFRegional.SizeConstraintSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SizeConstraintSet =
  { "Name" :: String
  , "SizeConstraints" :: Maybe (Array SizeConstraint)
  }

sizeConstraintSet :: { "Name" :: String } -> SizeConstraintSet
sizeConstraintSet required =
  merge required
    { "SizeConstraints" : Nothing
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

type SizeConstraint =
  { "ComparisonOperator" :: String
  , "Size" :: Int
  , "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

sizeConstraint :: { "ComparisonOperator" :: String, "Size" :: Int, "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> SizeConstraint
sizeConstraint required =
  required