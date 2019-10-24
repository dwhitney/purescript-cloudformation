module CloudFormation.AWS.WAFRegional.ByteMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::WAFRegional::ByteMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html
-- |
-- | - `ByteMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-bytematchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-name
newtype ByteMatchSet = ByteMatchSet
  { "Name" :: String
  , "ByteMatchTuples" :: Maybe (Array ByteMatchTuple)
  }

derive instance newtypeByteMatchSet :: Newtype ByteMatchSet _
instance resourceByteMatchSet :: Resource ByteMatchSet where type_ _ = "AWS::WAFRegional::ByteMatchSet"

byteMatchSet :: { "Name" :: String } -> ByteMatchSet
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
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
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
  { "PositionalConstraint" :: String
  , "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  , "TargetString" :: Maybe String
  , "TargetStringBase64" :: Maybe String
  }

byteMatchTuple :: { "PositionalConstraint" :: String, "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> ByteMatchTuple
byteMatchTuple required =
  (merge required
    { "TargetString" : Nothing
    , "TargetStringBase64" : Nothing
    })