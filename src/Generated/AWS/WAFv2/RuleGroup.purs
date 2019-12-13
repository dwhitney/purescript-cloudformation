module CloudFormation.AWS.WAFv2.RuleGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::WAFv2::RuleGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html
-- |
-- | - `Capacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-capacity
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-name
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-scope
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rules
-- | - `VisibilityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-visibilityconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-tags
newtype RuleGroup = RuleGroup
  { "Name" :: Value String
  , "Scope" :: Value String
  , "Capacity" :: Maybe (Value Int)
  , "Description" :: Maybe (Value String)
  , "Rules" :: Maybe (Value Rules)
  , "VisibilityConfig" :: Maybe (Value VisibilityConfig)
  , "Tags" :: Maybe (Value TagList)
  }

derive instance newtypeRuleGroup :: Newtype RuleGroup _
derive newtype instance writeRuleGroup :: WriteForeign RuleGroup
instance resourceRuleGroup :: Resource RuleGroup where type_ _ = "AWS::WAFv2::RuleGroup"

ruleGroup :: { "Name" :: Value String, "Scope" :: Value String } -> RuleGroup
ruleGroup required = RuleGroup
  (merge required
    { "Capacity" : Nothing
    , "Description" : Nothing
    , "Rules" : Nothing
    , "VisibilityConfig" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::WAFv2::RuleGroup.StatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-geomatchstatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-regexpatternsetreferencestatement
-- | - `RateBasedStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-ratebasedstatement
-- | - `AndStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-andstatement
-- | - `OrStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-orstatement
-- | - `NotStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-notstatement
type StatementTwo =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
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
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  , "RateBasedStatement" : Nothing
  , "AndStatement" : Nothing
  , "OrStatement" : Nothing
  , "NotStatement" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.SizeConstraintStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-fieldtomatch
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-comparisonoperator
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-size
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-texttransformations
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

-- | `AWS::WAFv2::RuleGroup.TagList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-taglist.html
-- |
-- | - `TagList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-taglist.html#cfn-wafv2-rulegroup-taglist-taglist
type TagList =
  { "TagList" :: Maybe (Value (Array Tag))
  }

tagList :: TagList
tagList =
  { "TagList" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.AndStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementone.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementone.html#cfn-wafv2-rulegroup-andstatementone-statements
type AndStatementOne =
  { "Statements" :: Maybe (Value StatementTwos)
  }

andStatementOne :: AndStatementOne
andStatementOne =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.SqliMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-texttransformations
type SqliMatchStatement =
  { "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

sqliMatchStatement :: SqliMatchStatement
sqliMatchStatement =
  { "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.GeoMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html
-- |
-- | - `CountryCodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-countrycodes
type GeoMatchStatement =
  { "CountryCodes" :: Maybe (Value CountryCodes)
  }

geoMatchStatement :: GeoMatchStatement
geoMatchStatement =
  { "CountryCodes" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.VisibilityConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html
-- |
-- | - `SampledRequestsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-sampledrequestsenabled
-- | - `CloudWatchMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-cloudwatchmetricsenabled
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-metricname
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

-- | `AWS::WAFv2::RuleGroup.StatementTwos`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwos.html
-- |
-- | - `StatementTwos`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwos.html#cfn-wafv2-rulegroup-statementtwos-statementtwos
type StatementTwos =
  { "StatementTwos" :: Maybe (Value (Array StatementTwo))
  }

statementTwos :: StatementTwos
statementTwos =
  { "StatementTwos" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.AllQueryArguments`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-allqueryarguments.html
-- |

type AllQueryArguments =
  { 
  }

allQueryArguments :: AllQueryArguments
allQueryArguments = {}

-- | `AWS::WAFv2::RuleGroup.SingleHeader`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singleheader.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singleheader.html#cfn-wafv2-rulegroup-singleheader-name
type SingleHeader =
  { "Name" :: Maybe (Value String)
  }

singleHeader :: SingleHeader
singleHeader =
  { "Name" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.Method`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-method.html
-- |

type Method =
  { 
  }

method :: Method
method = {}

-- | `AWS::WAFv2::RuleGroup.QueryString`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-querystring.html
-- |

type QueryString =
  { 
  }

queryString :: QueryString
queryString = {}

-- | `AWS::WAFv2::RuleGroup.TextTransformations`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformations.html
-- |
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformations.html#cfn-wafv2-rulegroup-texttransformations-texttransformations
type TextTransformations =
  { "TextTransformations" :: Maybe (Value (Array TextTransformation))
  }

textTransformations :: TextTransformations
textTransformations =
  { "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.IPSetReferenceStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
type IPSetReferenceStatement =
  { "Arn" :: Maybe (Value String)
  }

ipsPSetReferenceStatement :: IPSetReferenceStatement
ipsPSetReferenceStatement =
  { "Arn" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.CountAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-countaction.html
-- |

type CountAction =
  { 
  }

countAction :: CountAction
countAction = {}

-- | `AWS::WAFv2::RuleGroup.FieldToMatch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html
-- |
-- | - `SingleHeader`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singleheader
-- | - `SingleQueryArgument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singlequeryargument
-- | - `AllQueryArguments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-allqueryarguments
-- | - `UriPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-uripath
-- | - `QueryString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-querystring
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-body
-- | - `Method`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-method
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

-- | `AWS::WAFv2::RuleGroup.OrStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html#cfn-wafv2-rulegroup-orstatementtwo-statements
type OrStatementTwo =
  { "Statements" :: Maybe (Value StatementThrees)
  }

orStatementTwo :: OrStatementTwo
orStatementTwo =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.StatementThrees`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthrees.html
-- |
-- | - `StatementThrees`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthrees.html#cfn-wafv2-rulegroup-statementthrees-statementthrees
type StatementThrees =
  { "StatementThrees" :: Maybe (Value (Array StatementThree))
  }

statementThrees :: StatementThrees
statementThrees =
  { "StatementThrees" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.RateBasedStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html
-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-limit
-- | - `AggregateKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-aggregatekeytype
-- | - `ScopeDownStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-scopedownstatement
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

-- | `AWS::WAFv2::RuleGroup.CountryCodes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-countrycodes.html
-- |
-- | - `CountryCodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-countrycodes.html#cfn-wafv2-rulegroup-countrycodes-countrycodes
type CountryCodes =
  { "CountryCodes" :: Maybe (Value (Array String))
  }

countryCodes :: CountryCodes
countryCodes =
  { "CountryCodes" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.StatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-geomatchstatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-regexpatternsetreferencestatement
-- | - `RateBasedStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ratebasedstatement
-- | - `AndStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-andstatement
-- | - `OrStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-orstatement
-- | - `NotStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-notstatement
type StatementOne =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
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
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  , "RateBasedStatement" : Nothing
  , "AndStatement" : Nothing
  , "OrStatement" : Nothing
  , "NotStatement" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.Rules`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rules.html
-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rules.html#cfn-wafv2-rulegroup-rules-rules
type Rules =
  { "Rules" :: Maybe (Value (Array Rule))
  }

rules :: Rules
rules =
  { "Rules" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.BlockAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-blockaction.html
-- |

type BlockAction =
  { 
  }

blockAction :: BlockAction
blockAction = {}

-- | `AWS::WAFv2::RuleGroup.RuleAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html
-- |
-- | - `Allow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-allow
-- | - `Block`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-block
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-count
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

-- | `AWS::WAFv2::RuleGroup.Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-name
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-priority
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-statement
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-action
-- | - `VisibilityConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-visibilityconfig
type Rule =
  { "Name" :: Maybe (Value String)
  , "Priority" :: Maybe (Value Int)
  , "Statement" :: Maybe (Value StatementOne)
  , "Action" :: Maybe (Value RuleAction)
  , "VisibilityConfig" :: Maybe (Value VisibilityConfig)
  }

rule :: Rule
rule =
  { "Name" : Nothing
  , "Priority" : Nothing
  , "Statement" : Nothing
  , "Action" : Nothing
  , "VisibilityConfig" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.NotStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementtwo.html
-- |
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementtwo.html#cfn-wafv2-rulegroup-notstatementtwo-statement
type NotStatementTwo =
  { "Statement" :: Maybe (Value StatementThree)
  }

notStatementTwo :: NotStatementTwo
notStatementTwo =
  { "Statement" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.StatementThree`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html
-- |
-- | - `ByteMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-bytematchstatement
-- | - `SqliMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sqlimatchstatement
-- | - `XssMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-xssmatchstatement
-- | - `SizeConstraintStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sizeconstraintstatement
-- | - `GeoMatchStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-geomatchstatement
-- | - `IPSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-ipsetreferencestatement
-- | - `RegexPatternSetReferenceStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-regexpatternsetreferencestatement
type StatementThree =
  { "ByteMatchStatement" :: Maybe (Value ByteMatchStatement)
  , "SqliMatchStatement" :: Maybe (Value SqliMatchStatement)
  , "XssMatchStatement" :: Maybe (Value XssMatchStatement)
  , "SizeConstraintStatement" :: Maybe (Value SizeConstraintStatement)
  , "GeoMatchStatement" :: Maybe (Value GeoMatchStatement)
  , "IPSetReferenceStatement" :: Maybe (Value IPSetReferenceStatement)
  , "RegexPatternSetReferenceStatement" :: Maybe (Value RegexPatternSetReferenceStatement)
  }

statementThree :: StatementThree
statementThree =
  { "ByteMatchStatement" : Nothing
  , "SqliMatchStatement" : Nothing
  , "XssMatchStatement" : Nothing
  , "SizeConstraintStatement" : Nothing
  , "GeoMatchStatement" : Nothing
  , "IPSetReferenceStatement" : Nothing
  , "RegexPatternSetReferenceStatement" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.AndStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html#cfn-wafv2-rulegroup-andstatementtwo-statements
type AndStatementTwo =
  { "Statements" :: Maybe (Value StatementThrees)
  }

andStatementTwo :: AndStatementTwo
andStatementTwo =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.SingleQueryArgument`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html#cfn-wafv2-rulegroup-singlequeryargument-name
type SingleQueryArgument =
  { "Name" :: Maybe (Value String)
  }

singleQueryArgument :: SingleQueryArgument
singleQueryArgument =
  { "Name" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.RegexPatternSetReferenceStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-arn
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-texttransformations
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

-- | `AWS::WAFv2::RuleGroup.ByteMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html
-- |
-- | - `SearchString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstring
-- | - `SearchStringBase64`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstringbase64
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-texttransformations
-- | - `PositionalConstraint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-positionalconstraint
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

-- | `AWS::WAFv2::RuleGroup.Body`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-body.html
-- |

type Body =
  { 
  }

body :: Body
body = {}

-- | `AWS::WAFv2::RuleGroup.TextTransformation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html
-- |
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-priority
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-type
type TextTransformation =
  { "Priority" :: Maybe (Value Int)
  , "Type" :: Maybe (Value String)
  }

textTransformation :: TextTransformation
textTransformation =
  { "Priority" : Nothing
  , "Type" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.UriPath`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-uripath.html
-- |

type UriPath =
  { 
  }

uriPath :: UriPath
uriPath = {}

-- | `AWS::WAFv2::RuleGroup.NotStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementone.html
-- |
-- | - `Statement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementone.html#cfn-wafv2-rulegroup-notstatementone-statement
type NotStatementOne =
  { "Statement" :: Maybe (Value StatementTwo)
  }

notStatementOne :: NotStatementOne
notStatementOne =
  { "Statement" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.AllowAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-allowaction.html
-- |

type AllowAction =
  { 
  }

allowAction :: AllowAction
allowAction = {}

-- | `AWS::WAFv2::RuleGroup.OrStatementOne`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementone.html
-- |
-- | - `Statements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementone.html#cfn-wafv2-rulegroup-orstatementone-statements
type OrStatementOne =
  { "Statements" :: Maybe (Value StatementTwos)
  }

orStatementOne :: OrStatementOne
orStatementOne =
  { "Statements" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.XssMatchStatement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html
-- |
-- | - `FieldToMatch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-fieldtomatch
-- | - `TextTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-texttransformations
type XssMatchStatement =
  { "FieldToMatch" :: Maybe (Value FieldToMatch)
  , "TextTransformations" :: Maybe (Value TextTransformations)
  }

xssMatchStatement :: XssMatchStatement
xssMatchStatement =
  { "FieldToMatch" : Nothing
  , "TextTransformations" : Nothing
  }

-- | `AWS::WAFv2::RuleGroup.RateBasedStatementTwo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html
-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-limit
-- | - `AggregateKeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-aggregatekeytype
-- | - `ScopeDownStatement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-scopedownstatement
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