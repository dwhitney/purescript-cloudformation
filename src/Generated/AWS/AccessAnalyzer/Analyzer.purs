module CloudFormation.AWS.AccessAnalyzer.Analyzer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AccessAnalyzer::Analyzer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html
-- |
-- | - `AnalyzerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-analyzername
-- | - `ArchiveRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-archiverules
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-tags
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-type
newtype Analyzer = Analyzer
  { "Type" :: Value String
  , "AnalyzerName" :: Maybe (Value String)
  , "ArchiveRules" :: Maybe (Value (Array ArchiveRule))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeAnalyzer :: Newtype Analyzer _
derive newtype instance writeAnalyzer :: WriteForeign Analyzer
instance resourceAnalyzer :: Resource Analyzer where type_ _ = "AWS::AccessAnalyzer::Analyzer"

analyzer :: { "Type" :: Value String } -> Analyzer
analyzer required = Analyzer
  (merge required
    { "AnalyzerName" : Nothing
    , "ArchiveRules" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::AccessAnalyzer::Analyzer.Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html
-- |
-- | - `Contains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-contains
-- | - `Eq`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-eq
-- | - `Exists`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-exists
-- | - `Property`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-property
-- | - `Neq`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-neq
type Filter =
  { "Property" :: Value String
  , "Contains" :: Maybe (Value (Array String))
  , "Eq" :: Maybe (Value (Array String))
  , "Exists" :: Maybe (Value Boolean)
  , "Neq" :: Maybe (Value (Array String))
  }

filter :: { "Property" :: Value String } -> Filter
filter required =
  (merge required
    { "Contains" : Nothing
    , "Eq" : Nothing
    , "Exists" : Nothing
    , "Neq" : Nothing
    })

-- | `AWS::AccessAnalyzer::Analyzer.ArchiveRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html
-- |
-- | - `Filter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html#cfn-accessanalyzer-analyzer-archiverule-filter
-- | - `RuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html#cfn-accessanalyzer-analyzer-archiverule-rulename
type ArchiveRule =
  { "Filter" :: Value (Array Filter)
  , "RuleName" :: Value String
  }

archiveRule :: { "Filter" :: Value (Array Filter), "RuleName" :: Value String } -> ArchiveRule
archiveRule required =
  required