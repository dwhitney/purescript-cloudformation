module CloudFormation.AWS.WAF.ByteMatchSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAF::ByteMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html
-- |
-- | - `ByteMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-bytematchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-name
newtype ByteMatchSet = ByteMatchSet
  { "Name" :: Value String
  , "ByteMatchTuples" :: Maybe (Value (Array ByteMatchTuple))
  }

derive instance newtypeByteMatchSet :: Newtype ByteMatchSet _
derive newtype instance writeByteMatchSet :: WriteForeign ByteMatchSet
instance resourceByteMatchSet :: Resource ByteMatchSet where type_ _ = "AWS::WAF::ByteMatchSet"

byteMatchSet :: { "Name" :: Value String } -> ByteMatchSet
byteMatchSet required = ByteMatchSet
  (merge required
    { "ByteMatchTuples" : Nothing
    })

-- | `AWS::WAF::ByteMatchSet.ByteMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch
-- | - `PositionalConstraint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-positionalconstraint
-- | - `TargetString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-targetstring
-- | - `TargetStringBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-targetstringbase64
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-texttransformation
type ByteMatchTuple =
  { "FieldToMatch" :: Value FieldToMatch
  , "PositionalConstraint" :: Value String
  , "TextTransformation" :: Value String
  , "TargetString" :: Maybe (Value String)
  , "TargetStringBase64" :: Maybe (Value String)
  }

byteMatchTuple :: { "FieldToMatch" :: Value FieldToMatch, "PositionalConstraint" :: Value String, "TextTransformation" :: Value String } -> ByteMatchTuple
byteMatchTuple required =
  (merge required
    { "TargetString" : Nothing
    , "TargetStringBase64" : Nothing
    })

-- | `AWS::WAF::ByteMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html
-- |
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-data
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-type
type FieldToMatch =
  { "Type" :: Value String
  , "Data" :: Maybe (Value String)
  }

fieldToMatch :: { "Type" :: Value String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })