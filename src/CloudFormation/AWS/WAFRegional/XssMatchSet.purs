module CloudFormation.AWS.WAFRegional.XssMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::XssMatchSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html-- |
-- | - `XssMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-xssmatchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-name
type XssMatchSet =
  { "Name" :: String
  , "XssMatchTuples" :: Maybe (Array XssMatchTuple)
  }

xssMatchSet :: { "Name" :: String } -> XssMatchSet
xssMatchSet required =
  merge required
    { "XssMatchTuples" : Nothing
    }

-- | `AWS::WAFRegional::XssMatchSet.FieldToMatch`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: String
  , "Data" :: Maybe String
  }

fieldToMatch :: { "Type" :: String } -> FieldToMatch
fieldToMatch required =
  merge required
    { "Data" : Nothing
    }

-- | `AWS::WAFRegional::XssMatchSet.XssMatchTuple`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html-- |
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-fieldtomatch
type XssMatchTuple =
  { "TextTransformation" :: String
  , "FieldToMatch" :: FieldToMatch
  }

xssMatchTuple :: { "TextTransformation" :: String, "FieldToMatch" :: FieldToMatch } -> XssMatchTuple
xssMatchTuple required =
  required