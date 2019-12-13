module CloudFormation.AWS.WAFv2.WebACL where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::WAFv2::WebACL`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html
-- |
-- | - `DefaultAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-defaultaction
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-name
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-scope
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-rules
-- | - `VisibilityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-visibilityconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-tags
newtype WebACL = WebACL
  { "Name" :: Value String
  , "Scope" :: Value String
  , "DefaultAction" :: Maybe (Value DefaultAction)
  , "Description" :: Maybe (Value String)
  , "Rules" :: Maybe (Value Rules)
  , "VisibilityConfig" :: Maybe (Value VisibilityConfig)
  , "Tags" :: Maybe (Value TagList)
  }

derive instance newtypeWebACL :: Newtype WebACL _
derive newtype instance writeWebACL :: WriteForeign WebACL
instance resourceWebACL :: Resource WebACL where type_ _ = "AWS::WAFv2::WebACL"

webACL :: { "Name" :: Value String, "Scope" :: Value String } -> WebACL
webACL required = WebACL
  (merge required
    { "DefaultAction" : Nothing
    , "Description" : Nothing
    , "Rules" : Nothing
    , "VisibilityConfig" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::WAFv2::WebACL.TagList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-taglist.html
-- |
-- | - `TagList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-taglist.html#cfn-wafv2-webacl-taglist-taglist
type TagList =
  { "TagList" :: Maybe (Value (Array Tag))
  }

tagList :: TagList
tagList =
  { "TagList" : Nothing
  }

-- | `AWS::WAFv2::WebACL.StatementThree`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-geomatchstatement
-- | - `RuleGroupReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-rulegroupreferencestatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-regexpatternsetreferencestatement
-- | - `ManagedRuleGroupStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-managedrulegroupstatement
type StatementThree =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "RuleGroupReferenceStatement" :: Maybe (Value RuleGroupReferenceStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
  , "ManagedRuleGroupStatement" :: Maybe (Value ManagedRuleGroupStatement)
  }

statementThree :: StatementThree
statementThree =
  { "ByteMatchStatement" : Nothing
  , "SqliMatchStatement" : Nothing
  , "XssMatchStatement" : Nothing
  , "SizeConstraintStatement" : Nothing
  , "GeoMatchStatement" : Nothing
  , "RuleGroupReferenceStatement" : Nothing
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  , "ManagedRuleGroupStatement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.AndStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementone.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementone.html#cfn-wafv2-webacl-andstatementone-statements
type AndStatementOne =
  { "Statements" :: Maybe (Value StatementTwos)
  }

andStatementOne :: AndStatementOne
andStatementOne =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::WebACL.IPSetReferenceStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html#cfn-wafv2-webacl-ipsetreferencestatement-arn
type IPSetReferenceStatement =
  { "Arn" :: Maybe (Value String)
  }

ipsPSetReferenceStatement :: IPSetReferenceStatement
ipsPSetReferenceStatement =
  { "Arn" : Nothing
  }

-- | `AWS::WAFv2::WebACL.SingleQueryArgument`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singlequeryargument.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singlequeryargument.html#cfn-wafv2-webacl-singlequeryargument-name
type SingleQueryArgument =
  { "Name" :: Maybe (Value String)
  }

singleQueryArgument :: SingleQueryArgument
singleQueryArgument =
  { "Name" : Nothing
  }

-- | `AWS::WAFv2::WebACL.AllQueryArguments`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-allqueryarguments.html
-- |

type AllQueryArguments =
  { 
  }

allQueryArguments :: AllQueryArguments
allQueryArguments = {}

-- | `AWS::WAFv2::WebACL.GeoMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html
-- |
-- | - `CountryCodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html#cfn-wafv2-webacl-geomatchstatement-countrycodes
type GeoMatchStatement =
  { "CountryCodes" :: Maybe (Value CountryCodes)
  }

geoMatchStatement :: GeoMatchStatement
geoMatchStatement =
  { "CountryCodes" : Nothing
  }

-- | `AWS::WAFv2::WebACL.SqliMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-texttransformations
type SqliMatchStatement =
  { "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

sqliMatchStatement :: SqliMatchStatement
sqliMatchStatement =
  { "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::WebACL.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html
-- |
-- | - `SingleHeader`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader
-- | - `SingleQueryArgument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument
-- | - `AllQueryArguments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-allqueryarguments
-- | - `UriPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-uripath
-- | - `QueryString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-querystring
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-body
-- | - `Method`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-method
type FieldToMatch =
  { "SingleHeader" :: Maybe (Value SingleHeader)
  , "SingleQueryArgument" :: Maybe (Value SingleQueryArgument)
  , "AllQueryArguments" :: Maybe (Value AllQueryArguments)
  , "UriPath" :: Maybe (Value UriPath)
  , "QueryString" :: Maybe (Value QueryString)
  , "Body" :: Maybe (Value Body)
  , "Method" :: Maybe (Value Method)
  }

fieldToMatch :: FieldToMatch
fieldToMatch =
  { "SingleHeader" : Nothing
  , "SingleQueryArgument" : Nothing
  , "AllQueryArguments" : Nothing
  , "UriPath" : Nothing
  , "QueryString" : Nothing
  , "Body" : Nothing
  , "Method" : Nothing
  }

-- | `AWS::WAFv2::WebACL.SingleHeader`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singleheader.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singleheader.html#cfn-wafv2-webacl-singleheader-name
type SingleHeader =
  { "Name" :: Maybe (Value String)
  }

singleHeader :: SingleHeader
singleHeader =
  { "Name" : Nothing
  }

-- | `AWS::WAFv2::WebACL.SizeConstraintStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations
type SizeConstraintStatement =
  { "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "ComparisonOperator" :: Maybe (Value String)
  , "Size" :: Maybe (Value Int)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

sizeConstraintStatement :: SizeConstraintStatement
sizeConstraintStatement =
  { "FieldToMatch" : Nothing
  , "ComparisonOperator" : Nothing
  , "Size" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::WebACL.VisibilityConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html
-- |
-- | - `SampledRequestsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-sampledrequestsenabled
-- | - `CloudWatchMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-cloudwatchmetricsenabled
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-metricname
type VisibilityConfig =
  { "SampledRequestsEnabled" :: Maybe (Value Boolean)
  , "CloudWatchMetricsEnabled" :: Maybe (Value Boolean)
  , "MetricName" :: Maybe (Value String)
  }

visibilityConfig :: VisibilityConfig
visibilityConfig =
  { "SampledRequestsEnabled" : Nothing
  , "CloudWatchMetricsEnabled" : Nothing
  , "MetricName" : Nothing
  }

-- | `AWS::WAFv2::WebACL.ExcludedRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html#cfn-wafv2-webacl-excludedrule-name
type ExcludedRule =
  { "Name" :: Maybe (Value String)
  }

excludedRule :: ExcludedRule
excludedRule =
  { "Name" : Nothing
  }

-- | `AWS::WAFv2::WebACL.RateBasedStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html
-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-limit
-- | - `AggregateKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-aggregatekeytype
-- | - `ScopeDownStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-scopedownstatement
type RateBasedStatementOne =
  { "Limit" :: Maybe (Value Int)
  , "AggregateKeyType" :: Maybe (Value String)
  , "ScopeDownStatement" :: Maybe (Value StatementTwo)
  }

rateBasedStatementOne :: RateBasedStatementOne
rateBasedStatementOne =
  { "Limit" : Nothing
  , "AggregateKeyType" : Nothing
  , "ScopeDownStatement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.ExcludedRules`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrules.html
-- |
-- | - `ExcludedRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrules.html#cfn-wafv2-webacl-excludedrules-excludedrules
type ExcludedRules =
  { "ExcludedRules" :: Maybe (Value (Array ExcludedRule))
  }

excludedRules :: ExcludedRules
excludedRules =
  { "ExcludedRules" : Nothing
  }

-- | `AWS::WAFv2::WebACL.NotStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementone.html
-- |
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementone.html#cfn-wafv2-webacl-notstatementone-statement
type NotStatementOne =
  { "Statement" :: Maybe (Value StatementTwo)
  }

notStatementOne :: NotStatementOne
notStatementOne =
  { "Statement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.NoneAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-noneaction.html
-- |

type NoneAction =
  { 
  }

noneAction :: NoneAction
noneAction = {}

-- | `AWS::WAFv2::WebACL.CountAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countaction.html
-- |

type CountAction =
  { 
  }

countAction :: CountAction
countAction = {}

-- | `AWS::WAFv2::WebACL.TextTransformations`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformations.html
-- |
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformations.html#cfn-wafv2-webacl-texttransformations-texttransformations
type TextTransformations =
  { "TextTransformations" :: Maybe (Value (Array TextTransformation))
  }

textTransformations :: TextTransformations
textTransformations =
  { "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::WebACL.StatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-geomatchstatement
-- | - `RuleGroupReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-rulegroupreferencestatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-regexpatternsetreferencestatement
-- | - `ManagedRuleGroupStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-managedrulegroupstatement
-- | - `RateBasedStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-ratebasedstatement
-- | - `AndStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-andstatement
-- | - `OrStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-orstatement
-- | - `NotStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwo.html#cfn-wafv2-webacl-statementtwo-notstatement
type StatementTwo =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "RuleGroupReferenceStatement" :: Maybe (Value RuleGroupReferenceStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
  , "ManagedRuleGroupStatement" :: Maybe (Value ManagedRuleGroupStatement)
  , "RateBasedStatement" :: Maybe (Value RateBasedStatementTwo)
  , "AndStatement" :: Maybe (Value AndStatementTwo)
  , "OrStatement" :: Maybe (Value OrStatementTwo)
  , "NotStatement" :: Maybe (Value NotStatementTwo)
  }

statementTwo :: StatementTwo
statementTwo =
  { "ByteMatchStatement" : Nothing
  , "SqliMatchStatement" : Nothing
  , "XssMatchStatement" : Nothing
  , "SizeConstraintStatement" : Nothing
  , "GeoMatchStatement" : Nothing
  , "RuleGroupReferenceStatement" : Nothing
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  , "ManagedRuleGroupStatement" : Nothing
  , "RateBasedStatement" : Nothing
  , "AndStatement" : Nothing
  , "OrStatement" : Nothing
  , "NotStatement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.RuleGroupReferenceStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
-- | - `ExcludedRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
type RuleGroupReferenceStatement =
  { "Arn" :: Maybe (Value String)
  , "ExcludedRules" :: Maybe (Value ExcludedRules)
  }

ruleGroupReferenceStatement :: RuleGroupReferenceStatement
ruleGroupReferenceStatement =
  { "Arn" : Nothing
  , "ExcludedRules" : Nothing
  }

-- | `AWS::WAFv2::WebACL.OrStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementone.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementone.html#cfn-wafv2-webacl-orstatementone-statements
type OrStatementOne =
  { "Statements" :: Maybe (Value StatementTwos)
  }

orStatementOne :: OrStatementOne
orStatementOne =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::WebACL.StatementTwos`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwos.html
-- |
-- | - `StatementTwos`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwos.html#cfn-wafv2-webacl-statementtwos-statementtwos
type StatementTwos =
  { "StatementTwos" :: Maybe (Value (Array StatementTwo))
  }

statementTwos :: StatementTwos
statementTwos =
  { "StatementTwos" : Nothing
  }

-- | `AWS::WAFv2::WebACL.QueryString`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-querystring.html
-- |

type QueryString =
  { 
  }

queryString :: QueryString
queryString = {}

-- | `AWS::WAFv2::WebACL.BlockAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-blockaction.html
-- |

type BlockAction =
  { 
  }

blockAction :: BlockAction
blockAction = {}

-- | `AWS::WAFv2::WebACL.StatementThrees`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthrees.html
-- |
-- | - `StatementThrees`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthrees.html#cfn-wafv2-webacl-statementthrees-statementthrees
type StatementThrees =
  { "StatementThrees" :: Maybe (Value (Array StatementThree))
  }

statementThrees :: StatementThrees
statementThrees =
  { "StatementThrees" : Nothing
  }

-- | `AWS::WAFv2::WebACL.CountryCodes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countrycodes.html
-- |
-- | - `CountryCodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countrycodes.html#cfn-wafv2-webacl-countrycodes-countrycodes
type CountryCodes =
  { "CountryCodes" :: Maybe (Value (Array String))
  }

countryCodes :: CountryCodes
countryCodes =
  { "CountryCodes" : Nothing
  }

-- | `AWS::WAFv2::WebACL.Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-name
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-priority
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-statement
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-action
-- | - `OverrideAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-overrideaction
-- | - `VisibilityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-visibilityconfig
type Rule =
  { "Name" :: Maybe (Value String)
  , "Priority" :: Maybe (Value Int)
  , "Statement" :: Maybe (Value StatementOne)
  , "Action" :: Maybe (Value RuleAction)
  , "OverrideAction" :: Maybe (Value OverrideAction)
  , "VisibilityConfig" :: Maybe (Value VisibilityConfig)
  }

rule :: Rule
rule =
  { "Name" : Nothing
  , "Priority" : Nothing
  , "Statement" : Nothing
  , "Action" : Nothing
  , "OverrideAction" : Nothing
  , "VisibilityConfig" : Nothing
  }

-- | `AWS::WAFv2::WebACL.RegexPatternSetReferenceStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-arn
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-texttransformations
type RegexPatternSetReferenceStatement =
  { "Arn" :: Maybe (Value String)
  , "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

regexPatternSetReferenceStatement :: RegexPatternSetReferenceStatement
regexPatternSetReferenceStatement =
  { "Arn" : Nothing
  , "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::WebACL.AndStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html#cfn-wafv2-webacl-andstatementtwo-statements
type AndStatementTwo =
  { "Statements" :: Maybe (Value StatementThrees)
  }

andStatementTwo :: AndStatementTwo
andStatementTwo =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::WebACL.Method`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-method.html
-- |

type Method =
  { 
  }

method :: Method
method = {}

-- | `AWS::WAFv2::WebACL.RateBasedStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html
-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-limit
-- | - `AggregateKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-aggregatekeytype
-- | - `ScopeDownStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-scopedownstatement
type RateBasedStatementTwo =
  { "Limit" :: Maybe (Value Int)
  , "AggregateKeyType" :: Maybe (Value String)
  , "ScopeDownStatement" :: Maybe (Value StatementThree)
  }

rateBasedStatementTwo :: RateBasedStatementTwo
rateBasedStatementTwo =
  { "Limit" : Nothing
  , "AggregateKeyType" : Nothing
  , "ScopeDownStatement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.OverrideAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-count
-- | - `None`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-overrideaction.html#cfn-wafv2-webacl-overrideaction-none
type OverrideAction =
  { "Count" :: Maybe (Value CountAction)
  , "None" :: Maybe (Value NoneAction)
  }

overrideAction :: OverrideAction
overrideAction =
  { "Count" : Nothing
  , "None" : Nothing
  }

-- | `AWS::WAFv2::WebACL.NotStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html
-- |
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html#cfn-wafv2-webacl-notstatementtwo-statement
type NotStatementTwo =
  { "Statement" :: Maybe (Value StatementThree)
  }

notStatementTwo :: NotStatementTwo
notStatementTwo =
  { "Statement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.Rules`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rules.html
-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rules.html#cfn-wafv2-webacl-rules-rules
type Rules =
  { "Rules" :: Maybe (Value (Array Rule))
  }

rules :: Rules
rules =
  { "Rules" : Nothing
  }

-- | `AWS::WAFv2::WebACL.ByteMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html
-- |
-- | - `SearchString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstring
-- | - `SearchStringBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstringbase64
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-texttransformations
-- | - `PositionalConstraint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-positionalconstraint
type ByteMatchStatement =
  { "SearchString" :: Maybe (Value String)
  , "SearchStringBase64" :: Maybe (Value String)
  , "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  , "PositionalConstraint" :: Maybe (Value String)
  }

byteMatchStatement :: ByteMatchStatement
byteMatchStatement =
  { "SearchString" : Nothing
  , "SearchStringBase64" : Nothing
  , "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  , "PositionalConstraint" : Nothing
  }

-- | `AWS::WAFv2::WebACL.StatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-geomatchstatement
-- | - `RuleGroupReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-rulegroupreferencestatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-regexpatternsetreferencestatement
-- | - `ManagedRuleGroupStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-managedrulegroupstatement
-- | - `RateBasedStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-ratebasedstatement
-- | - `AndStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-andstatement
-- | - `OrStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-orstatement
-- | - `NotStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-notstatement
type StatementOne =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "RuleGroupReferenceStatement" :: Maybe (Value RuleGroupReferenceStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
  , "ManagedRuleGroupStatement" :: Maybe (Value ManagedRuleGroupStatement)
  , "RateBasedStatement" :: Maybe (Value RateBasedStatementOne)
  , "AndStatement" :: Maybe (Value AndStatementOne)
  , "OrStatement" :: Maybe (Value OrStatementOne)
  , "NotStatement" :: Maybe (Value NotStatementOne)
  }

statementOne :: StatementOne
statementOne =
  { "ByteMatchStatement" : Nothing
  , "SqliMatchStatement" : Nothing
  , "XssMatchStatement" : Nothing
  , "SizeConstraintStatement" : Nothing
  , "GeoMatchStatement" : Nothing
  , "RuleGroupReferenceStatement" : Nothing
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  , "ManagedRuleGroupStatement" : Nothing
  , "RateBasedStatement" : Nothing
  , "AndStatement" : Nothing
  , "OrStatement" : Nothing
  , "NotStatement" : Nothing
  }

-- | `AWS::WAFv2::WebACL.XssMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-texttransformations
type XssMatchStatement =
  { "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

xssMatchStatement :: XssMatchStatement
xssMatchStatement =
  { "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::WebACL.OrStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html#cfn-wafv2-webacl-orstatementtwo-statements
type OrStatementTwo =
  { "Statements" :: Maybe (Value StatementThrees)
  }

orStatementTwo :: OrStatementTwo
orStatementTwo =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::WebACL.DefaultAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html
-- |
-- | - `Allow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-allow
-- | - `Block`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-block
type DefaultAction =
  { "Allow" :: Maybe (Value AllowAction)
  , "Block" :: Maybe (Value BlockAction)
  }

defaultAction :: DefaultAction
defaultAction =
  { "Allow" : Nothing
  , "Block" : Nothing
  }

-- | `AWS::WAFv2::WebACL.AllowAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-allowaction.html
-- |

type AllowAction =
  { 
  }

allowAction :: AllowAction
allowAction = {}

-- | `AWS::WAFv2::WebACL.TextTransformation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html
-- |
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-priority
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-texttransformation.html#cfn-wafv2-webacl-texttransformation-type
type TextTransformation =
  { "Priority" :: Maybe (Value Int)
  , "Type" :: Maybe (Value String)
  }

textTransformation :: TextTransformation
textTransformation =
  { "Priority" : Nothing
  , "Type" : Nothing
  }

-- | `AWS::WAFv2::WebACL.ManagedRuleGroupStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-name
-- | - `VendorName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-vendorname
-- | - `ExcludedRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-excludedrules
type ManagedRuleGroupStatement =
  { "Name" :: Maybe (Value String)
  , "VendorName" :: Maybe (Value String)
  , "ExcludedRules" :: Maybe (Value ExcludedRules)
  }

managedRuleGroupStatement :: ManagedRuleGroupStatement
managedRuleGroupStatement =
  { "Name" : Nothing
  , "VendorName" : Nothing
  , "ExcludedRules" : Nothing
  }

-- | `AWS::WAFv2::WebACL.Body`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-body.html
-- |

type Body =
  { 
  }

body :: Body
body = {}

-- | `AWS::WAFv2::WebACL.UriPath`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-uripath.html
-- |

type UriPath =
  { 
  }

uriPath :: UriPath
uriPath = {}

-- | `AWS::WAFv2::WebACL.RuleAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html
-- |
-- | - `Allow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-allow
-- | - `Block`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-block
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-count
type RuleAction =
  { "Allow" :: Maybe (Value AllowAction)
  , "Block" :: Maybe (Value BlockAction)
  , "Count" :: Maybe (Value CountAction)
  }

ruleAction :: RuleAction
ruleAction =
  { "Allow" : Nothing
  , "Block" : Nothing
  , "Count" : Nothing
  }