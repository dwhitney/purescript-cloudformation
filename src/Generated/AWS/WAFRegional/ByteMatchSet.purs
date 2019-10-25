module CloudFormation.AWS.WAFRegional.ByteMatchSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::ByteMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html
-- |
-- | - `ByteMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-bytematchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-name
newtype ByteMatchSet = ByteMatchSet
  { "Name" :: Value String
  , "ByteMatchTuples" :: Maybe (Value (Array ByteMatchTuple))
  }

derive instance newtypeByteMatchSet :: Newtype ByteMatchSet _
derive newtype instance writeByteMatchSet :: WriteForeign ByteMatchSet
instance resourceByteMatchSet :: Resource ByteMatchSet where type_ _ = "AWS::WAFRegional::ByteMatchSet"

byteMatchSet :: { "Name" :: Value String } -> ByteMatchSet
byteMatchSet required = ByteMatchSet
  (merge required
    { "ByteMatchTuples" : Nothing
    })

-- | `AWS::WAFRegional::ByteMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-fieldtomatch.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-fieldtomatch.html#cfn-wafregional-bytematchset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-fieldtomatch.html#cfn-wafregional-bytematchset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: Value String
  , "Data" :: Maybe (Value String)
  }

fieldToMatch :: { "Type" :: Value String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAFRegional::ByteMatchSet.ByteMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html
-- |
-- | - `TargetString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstring
-- | - `TargetStringBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstringbase64
-- | - `PositionalConstraint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-positionalconstraint
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-fieldtomatch
type ByteMatchTuple =
  { "PositionalConstraint" :: Value String
  , "TextTransformation" :: Value String
  , "FieldToMatch" :: Value FieldToMatch
  , "TargetString" :: Maybe (Value String)
  , "TargetStringBase64" :: Maybe (Value String)
  }

byteMatchTuple :: { "PositionalConstraint" :: Value String, "TextTransformation" :: Value String, "FieldToMatch" :: Value FieldToMatch } -> ByteMatchTuple
byteMatchTuple required =
  (merge required
    { "TargetString" : Nothing
    , "TargetStringBase64" : Nothing
    })