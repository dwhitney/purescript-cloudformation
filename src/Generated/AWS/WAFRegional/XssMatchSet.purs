module CloudFormation.AWS.WAFRegional.XssMatchSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::XssMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html
-- |
-- | - `XssMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-xssmatchtuples
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-name
newtype XssMatchSet = XssMatchSet
  { "Name" :: Value String
  , "XssMatchTuples" :: Maybe (Value (Array XssMatchTuple))
  }

derive instance newtypeXssMatchSet :: Newtype XssMatchSet _
derive newtype instance writeXssMatchSet :: WriteForeign XssMatchSet
instance resourceXssMatchSet :: Resource XssMatchSet where type_ _ = "AWS::WAFRegional::XssMatchSet"

xssMatchSet :: { "Name" :: Value String } -> XssMatchSet
xssMatchSet required = XssMatchSet
  (merge required
    { "XssMatchTuples" : Nothing
    })

-- | `AWS::WAFRegional::XssMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-type
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-data
type FieldToMatch =
  { "Type" :: Value String
  , "Data" :: Maybe (Value String)
  }

fieldToMatch :: { "Type" :: Value String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAFRegional::XssMatchSet.XssMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html
-- |
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-texttransformation
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-fieldtomatch
type XssMatchTuple =
  { "TextTransformation" :: Value String
  , "FieldToMatch" :: Value FieldToMatch
  }

xssMatchTuple :: { "TextTransformation" :: Value String, "FieldToMatch" :: Value FieldToMatch } -> XssMatchTuple
xssMatchTuple required =
  required