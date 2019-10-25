module CloudFormation.AWS.WAF.XssMatchSet where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAF::XssMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-name
-- | - `XssMatchTuples`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-xssmatchset.html#cfn-waf-xssmatchset-xssmatchtuples
newtype XssMatchSet = XssMatchSet
  { "Name" :: Value String
  , "XssMatchTuples" :: Value (Array XssMatchTuple)
  }

derive instance newtypeXssMatchSet :: Newtype XssMatchSet _
derive newtype instance writeXssMatchSet :: WriteForeign XssMatchSet
instance resourceXssMatchSet :: Resource XssMatchSet where type_ _ = "AWS::WAF::XssMatchSet"

xssMatchSet :: { "Name" :: Value String, "XssMatchTuples" :: Value (Array XssMatchTuple) } -> XssMatchSet
xssMatchSet required = XssMatchSet
  required

-- | `AWS::WAF::XssMatchSet.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html
-- |
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-data
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-type
type FieldToMatch =
  { "Type" :: Value String
  , "Data" :: Maybe (Value String)
  }

fieldToMatch :: { "Type" :: Value String } -> FieldToMatch
fieldToMatch required =
  (merge required
    { "Data" : Nothing
    })

-- | `AWS::WAF::XssMatchSet.XssMatchTuple`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch
-- | - `TextTransformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-texttransformation
type XssMatchTuple =
  { "FieldToMatch" :: Value FieldToMatch
  , "TextTransformation" :: Value String
  }

xssMatchTuple :: { "FieldToMatch" :: Value FieldToMatch, "TextTransformation" :: Value String } -> XssMatchTuple
xssMatchTuple required =
  required