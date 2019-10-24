module CloudFormation.AWS.WAF.ByteMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAF::ByteMatchSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html-- |
-- | - `ByteMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-bytematchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-bytematchset.html#cfn-waf-bytematchset-name
type ByteMatchSet =
  { "Name" :: String
  , "ByteMatchTuples" :: Maybe (Array ByteMatchTuple)
  }

byteMatchSet :: { "Name" :: String } -> ByteMatchSet
byteMatchSet required =
  merge required
    { "ByteMatchTuples" : Nothing
    }

-- | `AWS::WAF::ByteMatchSet.ByteMatchTuple`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html-- |
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

-- | `AWS::WAF::ByteMatchSet.FieldToMatch`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html-- |
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-data
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-type
type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  merge required
    { "Data" : Nothing
    }