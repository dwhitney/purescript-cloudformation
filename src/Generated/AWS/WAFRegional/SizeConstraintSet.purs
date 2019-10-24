module CloudFormation.AWS.WAFRegional.SizeConstraintSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAFRegional::SizeConstraintSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html
-- |
-- | - `SizeConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html#cfn-wafregional-sizeconstraintset-sizeconstraints
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sizeconstraintset.html#cfn-wafregional-sizeconstraintset-name
newtype SizeConstraintSet = SizeConstraintSet
  { "Name" :: String
  , "SizeConstraints" :: Maybe (Array SizeConstraint)
  }

derive instance newtypeSizeConstraintSet :: Newtype SizeConstraintSet _
instance resourceSizeConstraintSet :: Resource SizeConstraintSet where type_ _ = "AWS::WAFRegional::SizeConstraintSet"

sizeConstraintSet :: { "Name" :: String } -> SizeConstraintSet
sizeConstraintSet required = SizeConstraintSet
  (merge required
    { "SizeConstraints" : Nothing
    })

-- | `AWS::WAFRegional::SizeConstraintSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html#cfn-wafregional-sizeconstraintset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-fieldtomatch.html#cfn-wafregional-sizeconstraintset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAFRegional::SizeConstraintSet.SizeConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html
-- |
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-comparisonoperator
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-size
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-fieldtomatch
type SizeConstraint =
  { "ComparisonOperator" :: String
  , "Size" :: Int
  , "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

sizeConstraint :: { "ComparisonOperator" :: String, "Size" :: Int, "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> SizeConstraint
sizeConstraint required =
  required