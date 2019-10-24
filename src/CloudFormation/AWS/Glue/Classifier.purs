module CloudFormation.AWS.Glue.Classifier where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Glue::Classifier`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html-- |
-- | - `XMLClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-xmlclassifier
-- | - `JsonClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-jsonclassifier
-- | - `CsvClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-csvclassifier
-- | - `GrokClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-grokclassifier
type Classifier =
  { "XMLClassifier" :: Maybe XMLClassifier
  , "JsonClassifier" :: Maybe JsonClassifier
  , "CsvClassifier" :: Maybe CsvClassifier
  , "GrokClassifier" :: Maybe GrokClassifier
  }

classifier :: Classifier
classifier =
  { "XMLClassifier" : Nothing
  , "JsonClassifier" : Nothing
  , "CsvClassifier" : Nothing
  , "GrokClassifier" : Nothing
  }

-- | `AWS::Glue::Classifier.JsonClassifier`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html-- |
-- | - `JsonPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-jsonpath
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-name
type JsonClassifier =
  { "JsonPath" :: String
  , "Name" :: Maybe String
  }

jsonClassifier :: { "JsonPath" :: String } -> JsonClassifier
jsonClassifier required =
  merge required
    { "Name" : Nothing
    }

-- | `AWS::Glue::Classifier.GrokClassifier`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html-- |
-- | - `CustomPatterns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-custompatterns
-- | - `GrokPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-grokpattern
-- | - `Classification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-classification
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-name
type GrokClassifier =
  { "GrokPattern" :: String
  , "Classification" :: String
  , "CustomPatterns" :: Maybe String
  , "Name" :: Maybe String
  }

grokClassifier :: { "GrokPattern" :: String, "Classification" :: String } -> GrokClassifier
grokClassifier required =
  merge required
    { "CustomPatterns" : Nothing
    , "Name" : Nothing
    }

-- | `AWS::Glue::Classifier.XMLClassifier`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html-- |
-- | - `RowTag`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-rowtag
-- | - `Classification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-classification
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-name
type XMLClassifier =
  { "RowTag" :: String
  , "Classification" :: String
  , "Name" :: Maybe String
  }

xmlcMLClassifier :: { "RowTag" :: String, "Classification" :: String } -> XMLClassifier
xmlcMLClassifier required =
  merge required
    { "Name" : Nothing
    }

-- | `AWS::Glue::Classifier.CsvClassifier`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html-- |
-- | - `QuoteSymbol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-quotesymbol
-- | - `ContainsHeader`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-containsheader
-- | - `Delimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-delimiter
-- | - `Header`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-header
-- | - `AllowSingleColumn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-allowsinglecolumn
-- | - `DisableValueTrimming`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-disablevaluetrimming
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-name
type CsvClassifier =
  { "QuoteSymbol" :: Maybe String
  , "ContainsHeader" :: Maybe String
  , "Delimiter" :: Maybe String
  , "Header" :: Maybe (Array String)
  , "AllowSingleColumn" :: Maybe Boolean
  , "DisableValueTrimming" :: Maybe Boolean
  , "Name" :: Maybe String
  }

csvClassifier :: CsvClassifier
csvClassifier =
  { "QuoteSymbol" : Nothing
  , "ContainsHeader" : Nothing
  , "Delimiter" : Nothing
  , "Header" : Nothing
  , "AllowSingleColumn" : Nothing
  , "DisableValueTrimming" : Nothing
  , "Name" : Nothing
  }