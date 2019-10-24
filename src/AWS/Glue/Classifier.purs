module AWS.Glue.Classifier where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type JsonClassifier =
  { "JsonPath" :: String
  , "Name" :: Maybe String
  }

jsonClassifier :: { "JsonPath" :: String } -> JsonClassifier
jsonClassifier required =
  merge required
    { "Name" : Nothing
    }

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