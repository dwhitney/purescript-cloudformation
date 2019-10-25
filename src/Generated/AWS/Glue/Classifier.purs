module CloudFormation.AWS.Glue.Classifier where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::Glue::Classifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html
-- |
-- | - `XMLClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-xmlclassifier
-- | - `JsonClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-jsonclassifier
-- | - `CsvClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-csvclassifier
-- | - `GrokClassifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-grokclassifier
newtype Classifier = Classifier
  { "XMLClassifier" :: Maybe (Value XMLClassifier)
  , "JsonClassifier" :: Maybe (Value JsonClassifier)
  , "CsvClassifier" :: Maybe (Value CsvClassifier)
  , "GrokClassifier" :: Maybe (Value GrokClassifier)
  }

derive instance newtypeClassifier :: Newtype Classifier _
derive newtype instance writeClassifier :: WriteForeign Classifier
instance resourceClassifier :: Resource Classifier where type_ _ = "AWS::Glue::Classifier"

classifier :: Classifier
classifier = Classifier
  { "XMLClassifier" : Nothing
  , "JsonClassifier" : Nothing
  , "CsvClassifier" : Nothing
  , "GrokClassifier" : Nothing
  }

-- | `AWS::Glue::Classifier.JsonClassifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html
-- |
-- | - `JsonPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-jsonpath
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-name
type JsonClassifier =
  { "JsonPath" :: Value String
  , "Name" :: Maybe (Value String)
  }

jsonClassifier :: { "JsonPath" :: Value String } -> JsonClassifier
jsonClassifier required =
  (merge required
    { "Name" : Nothing
    })

-- | `AWS::Glue::Classifier.GrokClassifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html
-- |
-- | - `CustomPatterns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-custompatterns
-- | - `GrokPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-grokpattern
-- | - `Classification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-classification
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-name
type GrokClassifier =
  { "GrokPattern" :: Value String
  , "Classification" :: Value String
  , "CustomPatterns" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

grokClassifier :: { "GrokPattern" :: Value String, "Classification" :: Value String } -> GrokClassifier
grokClassifier required =
  (merge required
    { "CustomPatterns" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::Glue::Classifier.XMLClassifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html
-- |
-- | - `RowTag`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-rowtag
-- | - `Classification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-classification
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-name
type XMLClassifier =
  { "RowTag" :: Value String
  , "Classification" :: Value String
  , "Name" :: Maybe (Value String)
  }

xmlcMLClassifier :: { "RowTag" :: Value String, "Classification" :: Value String } -> XMLClassifier
xmlcMLClassifier required =
  (merge required
    { "Name" : Nothing
    })

-- | `AWS::Glue::Classifier.CsvClassifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html
-- |
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
  { "QuoteSymbol" :: Maybe (Value String)
  , "ContainsHeader" :: Maybe (Value String)
  , "Delimiter" :: Maybe (Value String)
  , "Header" :: Maybe (Value (Array String))
  , "AllowSingleColumn" :: Maybe (Value Boolean)
  , "DisableValueTrimming" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
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